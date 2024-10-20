import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:saunatonttu/components/sauna_autocomplete/bloc/sauna_autocomplete_bloc.dart';
import 'package:saunatonttu/components/sauna_autocomplete/view/sauna_autocomplete_view.dart';
import 'package:saunatonttu/fragments.graphql.dart';

class SaunaAutocompletePage extends StatelessWidget {
  const SaunaAutocompletePage(this.action, {Key? key}) : super(key: key);

  final Function({Fragment$SaunaAutocompleteFragment? returnValue}) action;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SaunaAutocompleteBloc(
        context.read<GraphQLClient>(),
      ),
      child: SaunaAutocompleteView(action),
    );
  }
}
