part of 'sauna_visit_manage_bloc.dart';

@immutable
abstract class SaunaVisitManageEvent {}

class VisitHistoryCreatedAtChangedEvent extends SaunaVisitManageEvent {
  final DateTime dateTime;

  VisitHistoryCreatedAtChangedEvent(this.dateTime);
}

class VisitHistoryCyclesChangedEvent extends SaunaVisitManageEvent {
  final int cycles;

  VisitHistoryCyclesChangedEvent(this.cycles);
}

class VisitHistoryDurationChangedEvent extends SaunaVisitManageEvent {
  final int duration;

  VisitHistoryDurationChangedEvent(this.duration);
}

class VisitHistoryNoteChangedEvent extends SaunaVisitManageEvent {
  final String note;

  VisitHistoryNoteChangedEvent(this.note);
}

class VisitHistoryRatingChangedEvent extends SaunaVisitManageEvent {
  final int rating;

  VisitHistoryRatingChangedEvent(this.rating);
}

class VisitHistoryReviewChangedEvent extends SaunaVisitManageEvent {
  final String review;

  VisitHistoryReviewChangedEvent(this.review);
}

class VisitHistorySaunaIdChangedEvent extends SaunaVisitManageEvent {
  final Fragment$SaunaAutocompleteFragment autocompleteFragment;

  VisitHistorySaunaIdChangedEvent(this.autocompleteFragment);
}

class VisitHistorySubmittedEvent extends SaunaVisitManageEvent {

}
