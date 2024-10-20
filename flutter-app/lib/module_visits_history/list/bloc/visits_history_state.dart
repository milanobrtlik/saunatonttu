part of 'visits_history_bloc.dart';

@immutable
abstract class VisitsHistoryState {}

class VisitsHistoryLoadingState extends VisitsHistoryState {}

class VisitsHistoryLoadedState extends VisitsHistoryState {
  final List<Fragment$VisitHistoryListItem> list;

  VisitsHistoryLoadedState(this.list);
}

class VisitsHistoryErrorState extends VisitsHistoryState {
  final String message;

  VisitsHistoryErrorState(this.message);
}
