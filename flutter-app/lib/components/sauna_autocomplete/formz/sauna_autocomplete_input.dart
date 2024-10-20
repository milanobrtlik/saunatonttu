import 'package:formz/formz.dart';

enum SaunaAutocompleteInputError { none }

class SaunaAutocompleteInput
    extends FormzInput<String, SaunaAutocompleteInputError> {
  SaunaAutocompleteInput.pure([super.value = '']) : super.dirty();

  SaunaAutocompleteInput.dirty(super.value) : super.dirty();

  @override
  SaunaAutocompleteInputError? validator(String? value) {
    return null;
  }
}
