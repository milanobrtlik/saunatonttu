part of 'visits_history_bloc.dart';

@immutable
abstract class VisitsHistoryEvent {}

class VisitsHistoryOpenedEvent extends VisitsHistoryEvent {}

class VisitsHistoryFetchMoreEvent extends VisitsHistoryEvent {}

class VisitsHistoryLoadedEvent extends VisitsHistoryEvent {
  final QueryResult<Query$myVisits> queryResult;

  VisitsHistoryLoadedEvent(this.queryResult);
}

class VisitsHistoryRefetchEvent extends VisitsHistoryEvent {}
