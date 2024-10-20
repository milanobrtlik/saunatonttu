import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/module_visits_history/module_visits.dart';

part 'visits_history_event.dart';

part 'visits_history_state.dart';

class VisitsHistoryBloc extends Bloc<VisitsHistoryEvent, VisitsHistoryState> {
  VisitsHistoryBloc(this.client) : super(VisitsHistoryLoadingState()) {
    on<VisitsHistoryOpenedEvent>(_onEntered);
    on<VisitsHistoryLoadedEvent>(_onDataReceived);
    on<VisitsHistoryRefetchEvent>(_onReFetch);
    observableQuery = client.watchQuery$myVisits(
      WatchOptions$Query$myVisits(),
    );
    observableQuery.stream.listen((event) {
      if (isClosed) return;
      add(VisitsHistoryLoadedEvent(event));
    });
  }

  final GraphQLClient client;
  late final ObservableQuery<Query$myVisits> observableQuery;

  FutureOr<void> _onEntered(
    VisitsHistoryOpenedEvent event,
    Emitter<VisitsHistoryState> emit,
  ) async {
    observableQuery.fetchResults(
      fetchPolicy: FetchPolicy.cacheAndNetwork,
    );
  }

  FutureOr<void> _onDataReceived(
    VisitsHistoryLoadedEvent event,
    Emitter<VisitsHistoryState> emit,
  ) async {
    if (event.queryResult.hasException) {
      emit(VisitsHistoryErrorState(event.queryResult.exception.toString()));
      return;
    }
    if (event.queryResult.isLoading) {
      return;
    }

    emit(VisitsHistoryLoadedState(event.queryResult.parsedData!.myVisits!.nodes!));
  }

  FutureOr<void> _onReFetch(
    VisitsHistoryRefetchEvent event,
    Emitter<VisitsHistoryState> emit,
  ) async {
    if(isClosed) return;
    observableQuery.refetch();
  }
}
