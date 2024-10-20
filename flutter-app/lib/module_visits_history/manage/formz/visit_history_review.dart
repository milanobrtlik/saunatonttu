import 'package:formz/formz.dart';

enum VisitHistoryReviewError { none }

class VisitHistoryReviewInput
    extends FormzInput<String, VisitHistoryReviewError> {
  const VisitHistoryReviewInput.pure([super.value = '']) : super.pure();

  const VisitHistoryReviewInput.dirty(super.value) : super.dirty();

  @override
  VisitHistoryReviewError? validator(String? value) {
    return null;
  }
}
