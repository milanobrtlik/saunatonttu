import 'package:formz/formz.dart';

enum VisitHistoryCyclesError { empty }

class VisitHistoryCyclesInput extends FormzInput<int, VisitHistoryCyclesError> {
  const VisitHistoryCyclesInput.pure([super.value = 3]) : super.pure();

  const VisitHistoryCyclesInput.dirty(super.value) : super.dirty();

  @override
  VisitHistoryCyclesError? validator(int? value) {
    if (value == null) return VisitHistoryCyclesError.empty;
    return null;
  }
}

extension VisitHistoryCycrelsErrorExtension on VisitHistoryCyclesError {
  String get text {
    switch (this) {
      case VisitHistoryCyclesError.empty:
        return 'Cycles are mandatory';
    }
  }
}
