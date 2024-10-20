import 'package:formz/formz.dart';
import 'package:saunatonttu/fragments.graphql.dart';

enum VisitHistorySaunaIdError { empty }

class VisitHistorySaunaInput
    extends FormzInput<Fragment$SaunaAutocompleteFragment?, VisitHistorySaunaIdError> {
  const VisitHistorySaunaInput.pure([super.value]) : super.pure();

  const VisitHistorySaunaInput.dirty(super.value) : super.dirty();

  @override
  VisitHistorySaunaIdError? validator(Fragment$SaunaAutocompleteFragment? value) {
    if (value == null) return VisitHistorySaunaIdError.empty;
    return null;
  }
}

extension VisitHistorySaunaIdErrorExtension on VisitHistorySaunaIdError {
  String get text {
    switch (this) {
      case VisitHistorySaunaIdError.empty:
        return 'Sauna is required.';
    }
  }
}
