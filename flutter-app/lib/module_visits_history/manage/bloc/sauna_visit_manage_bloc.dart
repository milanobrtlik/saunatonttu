import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/module_visits_history/manage/formz/formz.dart';
import 'package:saunatonttu/module_visits_history/manage/formz/visit_history_review.dart';
import 'package:saunatonttu/module_visits_history/manage/formz/visit_history_sauna_id.dart';
import 'package:saunatonttu/module_visits_history/module_visits.dart';
import 'package:saunatonttu/schema.graphql.dart';

part 'sauna_visit_manage_event.dart';

part 'sauna_visit_manage_state.dart';

class SaunaVisitManageBloc
    extends Bloc<SaunaVisitManageEvent, SaunaVisitManageState> {
  SaunaVisitManageBloc({required this.client})
      : super(SaunaVisitManageState(
          createdAt: VisitHistoryCreatedAtInput.pure(DateTime.now()),
        )) {
    on<VisitHistorySubmittedEvent>(_onSubmitted);
    on<VisitHistoryCreatedAtChangedEvent>(_onCreatedAtChanged);
    on<VisitHistoryCyclesChangedEvent>(_onCyclesChanged);
    on<VisitHistoryDurationChangedEvent>(_onDurationChanged);
    on<VisitHistoryNoteChangedEvent>(_onNoteChanged);
    on<VisitHistoryRatingChangedEvent>(_onRatingChanged);
    on<VisitHistoryReviewChangedEvent>(_onReviewChanged);
    on<VisitHistorySaunaIdChangedEvent>(_onSaunaIdChanged);
  }

  final GraphQLClient client;

  FutureOr<void> _onSubmitted(
    VisitHistorySubmittedEvent event,
    Emitter<SaunaVisitManageState> emit,
  ) async {
    emit(state.copyWith(
      status: FormzStatus.submissionInProgress,
    ));

    var input = Input$VisitHistoryCreateInput(
      saunaId: state.sauna.value!.id,
      visitedAt: state.createdAt.value!,
      cycles: state.cycles.value,
      duration: state.duration.value,
    );
    if(state.rating.pure == false) {
      input = input.copyWith(rating: state.rating.value);
    }
    if(state.review.pure == false) {
      input = input.copyWith(review: state.review.value);
    }
    if(state.note.pure == false) {
      input = input.copyWith(note: state.note.value);
    }

    final result = await client.mutate$visitHistoryAdd(
      Options$Mutation$visitHistoryAdd(
        variables: Variables$Mutation$visitHistoryAdd(
          input: input,
        ),
      ),
    );

    if(result.hasException) {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
      ));
      return;
    }

    emit(state.copyWith(
      status: FormzStatus.submissionSuccess,
    ));
  }

  FutureOr<void> _onCreatedAtChanged(
    VisitHistoryCreatedAtChangedEvent event,
    Emitter<SaunaVisitManageState> emit,
  ) async {
    emit(
      state.copyWith(
        createdAt: VisitHistoryCreatedAtInput.dirty(event.dateTime),
      ),
    );
  }

  FutureOr<void> _onCyclesChanged(
    VisitHistoryCyclesChangedEvent event,
    Emitter<SaunaVisitManageState> emit,
  ) async {
    emit(state.copyWith(
      cycles: VisitHistoryCyclesInput.dirty(event.cycles),
    ));
  }

  FutureOr<void> _onDurationChanged(
    VisitHistoryDurationChangedEvent event,
    Emitter<SaunaVisitManageState> emit,
  ) async {
    emit(state.copyWith(
      duration: VisitHistoryDurationInput.dirty(event.duration),
    ));
  }

  FutureOr<void> _onNoteChanged(
    VisitHistoryNoteChangedEvent event,
    Emitter<SaunaVisitManageState> emit,
  ) async {
    emit(state.copyWith(
      note: VisitHistoryNoteInput.dirty(event.note),
    ));
  }

  FutureOr<void> _onRatingChanged(
    VisitHistoryRatingChangedEvent event,
    Emitter<SaunaVisitManageState> emit,
  ) async {
    emit(state.copyWith(
      rating: VisitHistoryRatingInput.dirty(event.rating),
    ));
  }

  FutureOr<void> _onReviewChanged(
    VisitHistoryReviewChangedEvent event,
    Emitter<SaunaVisitManageState> emit,
  ) async {
    emit(state.copyWith(
      review: VisitHistoryReviewInput.dirty(event.review),
    ));
  }

  FutureOr<void> _onSaunaIdChanged(
    VisitHistorySaunaIdChangedEvent event,
    Emitter<SaunaVisitManageState> emit,
  ) async {
    emit(state.copyWith(
      sauna: VisitHistorySaunaInput.dirty(event.autocompleteFragment),
    ));
  }
}
