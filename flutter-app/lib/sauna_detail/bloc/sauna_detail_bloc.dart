import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/page_nearest/graphql/nearest.graphql.dart';

part 'sauna_detail_event.dart';

part 'sauna_detail_state.dart';

class SaunaDetailBloc extends Bloc<SaunaDetailEvent, SaunaDetailState> {
  SaunaDetailBloc(this.client) : super(SaunaDetailLoadingState()) {
    on<SaunaDetailEnteredEvent>(_onSaunaDetailEntered);
  }

  final GraphQLClient client;

  FutureOr<void> _onSaunaDetailEntered(
    SaunaDetailEnteredEvent event,
    Emitter<SaunaDetailState> emit,
  ) async {
    final result = await client.query$saunaDetail(
      Options$Query$saunaDetail(
        variables: Variables$Query$saunaDetail(
          id: event.id.toString(),
        ),
      ),
    );
    if (result.hasException) {
      emit(SaunaDetailErrorState());
      return;
    }

    emit(SaunaDetailLoadedState(result.parsedData!.saunaDetail!));
  }
}
