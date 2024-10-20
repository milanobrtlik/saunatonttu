import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:saunatonttu/components/sauna_autocomplete/graphql/sauna_autocomplete.graphql.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/schema.graphql.dart';

part 'sauna_autocomplete_event.dart';

part 'sauna_autocomplete_state.dart';

class SaunaAutocompleteBloc
    extends Bloc<SaunaAutocompleteEvent, SaunaAutocompleteState> {
  SaunaAutocompleteBloc(this.client) : super(SaunaAutocompleteInitialState()) {
    on<SaunaAutocompleteInputChanged>(_onSearch);
  }

  final GraphQLClient client;

  FutureOr<void> _onSearch(
    SaunaAutocompleteInputChanged event,
    Emitter<SaunaAutocompleteState> emit,
  ) async {
    final result = await client.query$autocompleteSearch(
      Options$Query$autocompleteSearch(
        variables: Variables$Query$autocompleteSearch(
          input: Input$SaunaFilterInput(
            fulltext: event.value,
          ),
        ),
      ),
    );

    if(result.hasException) {
      emit(SaunaAutocompleteErrorState());
      return;
    }

    final list = result.parsedData!.saunaList!.nodes!;

    emit(SaunaAutocompleteLoadedState(list));
  }
}
