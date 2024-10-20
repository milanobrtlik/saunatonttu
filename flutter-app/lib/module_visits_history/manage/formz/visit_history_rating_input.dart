import 'package:formz/formz.dart';

enum VisitHistoryRatingError { empty }

class VisitHistoryRatingInput extends FormzInput<int, VisitHistoryRatingError> {
  const VisitHistoryRatingInput.pure([super.value = 3]) : super.pure();

  const VisitHistoryRatingInput.dirty(super.value) : super.dirty();

  @override
  VisitHistoryRatingError? validator(int? value) {
    return null;
  }
}
