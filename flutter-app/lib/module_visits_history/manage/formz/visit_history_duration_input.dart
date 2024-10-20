import 'package:formz/formz.dart';

enum VisitHistoryDurationError { empty }

class VisitHistoryDurationInput
    extends FormzInput<int, VisitHistoryDurationError> {
  const VisitHistoryDurationInput.pure([super.value = 5400]) : super.pure();

  const VisitHistoryDurationInput.dirty(super.value) : super.dirty();

  @override
  VisitHistoryDurationError? validator(int? value) {
    if (value == null) return VisitHistoryDurationError.empty;
    return null;
  }
}

extension VisitHistoryDurationErrorExtension on VisitHistoryDurationError {
  String get text {
    switch (this) {
      case VisitHistoryDurationError.empty:
        return 'Duration is mandatory.';
    }
  }
}
