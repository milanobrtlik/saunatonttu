import 'package:formz/formz.dart';

enum VisitHistoryNoteError { empty }

class VisitHistoryNoteInput extends FormzInput<String, VisitHistoryNoteError> {
  const VisitHistoryNoteInput.pure([super.value = '']) : super.pure();

  const VisitHistoryNoteInput.dirty(super.value) : super.dirty();

  @override
  VisitHistoryNoteError? validator(String? value) {
    return null;
  }
}
