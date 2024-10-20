part of 'sauna_autocomplete_bloc.dart';

@immutable
abstract class SaunaAutocompleteState {}

class SaunaAutocompleteInitialState extends SaunaAutocompleteState {}

class SaunaAutocompleteLoadingState extends SaunaAutocompleteState {}

class SaunaAutocompleteLoadedState extends SaunaAutocompleteState {
  final List<Fragment$SaunaAutocompleteFragment> list;

  SaunaAutocompleteLoadedState(this.list);
}

class SaunaAutocompleteErrorState extends SaunaAutocompleteState {}
