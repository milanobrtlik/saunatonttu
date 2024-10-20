part of 'sauna_visit_manage_bloc.dart';

class SaunaVisitManageState extends Equatable {
  final FormzStatus status;
  final VisitHistoryCreatedAtInput createdAt;
  final VisitHistoryCyclesInput cycles;
  final VisitHistoryDurationInput duration;
  final VisitHistoryNoteInput note;
  final VisitHistoryRatingInput rating;
  final VisitHistoryReviewInput review;
  final VisitHistorySaunaInput sauna;

  const SaunaVisitManageState({
    this.status = FormzStatus.pure,
    this.createdAt = const VisitHistoryCreatedAtInput.pure(),
    this.cycles = const VisitHistoryCyclesInput.pure(),
    this.duration = const VisitHistoryDurationInput.pure(),
    this.note = const VisitHistoryNoteInput.pure(),
    this.rating = const VisitHistoryRatingInput.pure(),
    this.review = const VisitHistoryReviewInput.pure(),
    this.sauna = const VisitHistorySaunaInput.pure(),
  });

  SaunaVisitManageState copyWith({
    FormzStatus? status,
    VisitHistoryCreatedAtInput? createdAt,
    VisitHistoryCyclesInput? cycles,
    VisitHistoryDurationInput? duration,
    VisitHistoryNoteInput? note,
    VisitHistoryRatingInput? rating,
    VisitHistoryReviewInput? review,
    VisitHistorySaunaInput? sauna,
  }) {
    return SaunaVisitManageState(
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      cycles: cycles ?? this.cycles,
      duration: duration ?? this.duration,
      note: note ?? this.note,
      rating: rating ?? this.rating,
      review: review ?? this.review,
      sauna: sauna ?? this.sauna,
    );
  }

  @override
  List<Object?> get props => [
        status,
        createdAt,
        cycles,
        duration,
        note,
        rating,
        review,
        sauna,
      ];
}
