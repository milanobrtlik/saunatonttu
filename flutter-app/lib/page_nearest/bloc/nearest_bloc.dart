import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:geofencing/geofencing.dart';
import 'package:geolocator/geolocator.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:saunatonttu/main.dart';
import 'package:saunatonttu/page_nearest/graphql/nearest.graphql.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../schema.graphql.dart';

part 'nearest_event.dart';

part 'nearest_state.dart';

const throttleDuration = Duration(milliseconds: 3000);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class NearestBloc extends Bloc<NearestEvent, NearestState> {
  final GraphQLClient _client;
  late final ObservableQuery<Query$saunaList> saunaListWatch;

  NearestBloc(this._client) : super(NearestLoadingState()) {
    on<NearestOpenedEvent>(_onNearestEntered);
    on<NearestFetchMoreEvent>(
      _onNearestFetchMore,
      transformer: throttleDroppable(throttleDuration),
    );
    on<NearestDataReceived>(_onNearestDataReceived);
    on<NearestFavoriteClickedEvent>(_onNearestFavoriteClicked);
  }

  FutureOr<void> _onNearestEntered(
    NearestOpenedEvent event,
    Emitter<NearestState> emit,
  ) async {
    emit(NearestFindingPositionState());
    final location = await _determinePosition();
    saunaListWatch = _client.watchQuery$saunaList(
      WatchOptions$Query$saunaList(
        variables: Variables$Query$saunaList(
          where: Input$SaunaFilterInput(
            position: Input$PositionInput(
              lat: location.latitude,
              lon: location.longitude,
            ),
          ),
          first: 10,
          picturesFirst: 5,
        ),
      ),
    );
    saunaListWatch.stream.listen((event) {
      if (isClosed == false) {
        add(NearestDataReceived(event));
      }
    });
    saunaListWatch.fetchResults(
      fetchPolicy: FetchPolicy.cacheAndNetwork,
    );
  }

  FutureOr<void> _onNearestFetchMore(
    NearestFetchMoreEvent event,
    Emitter<NearestState> emit,
  ) async {
    final s = state as NearestLoadedState;
    if (s.list.pageInfo.hasNextPage == false) return;
    saunaListWatch.fetchMore(
      FetchMoreOptions$Query$saunaList(
        updateQuery: (previousResultData, fetchMoreResultData) {
          final result = <dynamic>[
            ...previousResultData?['saunaList']['edges'] ?? [],
            ...fetchMoreResultData?['saunaList']['edges'] ?? [],
          ];
          fetchMoreResultData!['saunaList']['edges'] = result;
          return fetchMoreResultData;
        },
        variables: Variables$Query$saunaList(
          after: s.list.pageInfo.endCursor,
          where: Input$SaunaFilterInput(
              position: Input$PositionInput(
            lon: saunaListWatch.options.variables['where']['position']['lon'],
            lat: saunaListWatch.options.variables['where']['position']['lat'],
          )),
          first: saunaListWatch.options.variables['first'],
          picturesFirst: saunaListWatch.options.variables['picturesFirst'],
        ),
      ),
    );
  }

  FutureOr<void> _onNearestDataReceived(
    NearestDataReceived event,
    Emitter<NearestState> emit,
  ) async {
    if (event.queryResult.isLoading) {
      return;
    }

    if (event.queryResult.hasException) {
      return;
    }

    emit(NearestLoadedState(
      list: event.queryResult.parsedData!.saunaList!,
      myPosition: await Geolocator.getLastKnownPosition(),
    ));
  }

  Future<Position> _determinePosition() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      return Future.error('Location services are disabled.');
    }
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }
    final lastKnown = await Geolocator.getLastKnownPosition();
    if (lastKnown != null) {
      // return lastKnown;
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  FutureOr<void> _onNearestFavoriteClicked(
    NearestFavoriteClickedEvent event,
    Emitter<NearestState> emit,
  ) async {
    final response = await _client.mutate$manageMyFavorite(
      Options$Mutation$manageMyFavorite(
        variables: Variables$Mutation$manageMyFavorite(
          isMyFavorite: event.isMyFavorite,
          saunaId: event.saunaId,
        ),
      ),
    );
    final sauna = response.parsedData?.manageMyFavorite.sauna;
    if (sauna == null) return;
    final triggers = <GeofenceEvent>[
      GeofenceEvent.exit,
    ];
    final androidSettings = AndroidGeofencingSettings(
      initialTrigger: <GeofenceEvent>[
        GeofenceEvent.exit,
      ],
      loiteringDelay: 1000 * 60 * 90, // 90 minutes
    );
    final region = GeofenceRegion(
      id: 'sauna_visit_${sauna.id}',
      latitude: sauna.location.coordinates!.lat,
      longitude: sauna.location.coordinates!.lon,
      radius: 150,
      triggers: triggers,
      androidSettings: androidSettings,
    );
    if (sauna.isMyFavorite) {
      GeofencingManager.registerGeofence(region, geofencingCallback);
    } else {
      final ids = await GeofencingManager.getRegisteredGeofenceIds();
      if (ids.any((element) => element.contains(region.id))) {
        GeofencingManager.removeGeofence(region);
      }
    }
  }
}
