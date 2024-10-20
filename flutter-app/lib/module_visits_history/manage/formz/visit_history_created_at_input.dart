import 'package:formz/formz.dart';

enum VisitHistoryCreatedAtError { empty }

class VisitHistoryCreatedAtInput extends FormzInput<DateTime?, VisitHistoryCreatedAtError> {
  const VisitHistoryCreatedAtInput.pure([super.value]) : super.pure();

  const VisitHistoryCreatedAtInput.dirty(super.value) : super.dirty();

  @override
  VisitHistoryCreatedAtError? validator(DateTime? value) {
    if(value == null) return VisitHistoryCreatedAtError.empty;

    return null;
  }
}

extension VisitHistoryCreatedAtErrorExtension on VisitHistoryCreatedAtError {
  String get text {
    switch (this) {
      case VisitHistoryCreatedAtError.empty: return 'Sauned at is mandatory';
    }
  }
}
