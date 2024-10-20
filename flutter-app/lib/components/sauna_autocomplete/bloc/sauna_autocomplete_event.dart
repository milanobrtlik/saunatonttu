part of 'sauna_autocomplete_bloc.dart';

@immutable
abstract class SaunaAutocompleteEvent {}

class SaunaAutocompleteInputChanged extends SaunaAutocompleteEvent {
  final String value;

  SaunaAutocompleteInputChanged(this.value);
}
