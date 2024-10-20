import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saunatonttu/components/sauna_autocomplete/bloc/sauna_autocomplete_bloc.dart';
import 'package:saunatonttu/fragments.graphql.dart';

class SaunaAutocompleteView extends StatelessWidget {
  const SaunaAutocompleteView(this.action, {Key? key}) : super(key: key);

  final Function({Fragment$SaunaAutocompleteFragment? returnValue}) action;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              focusNode: FocusNode()..requestFocus(),
              decoration: InputDecoration(
                hintText: 'Hledat',
                prefixIcon: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => action(returnValue: null),
                ),
                errorText: null,
              ),
              onChanged: (s) => context
                  .read<SaunaAutocompleteBloc>()
                  .add(SaunaAutocompleteInputChanged(s)),
            ),
            BlocBuilder<SaunaAutocompleteBloc, SaunaAutocompleteState>(
              builder: (context, state) {
                if (state is SaunaAutocompleteLoadedState) {
                  return ListView.builder(
                    itemBuilder: (ctx, i) => ListTile(
                      title: Text(state.list[i].name),
                      onTap: () => action(returnValue: state.list[i]),
                    ),
                    itemCount: state.list.length,
                    shrinkWrap: true,
                  );
                }

                if (state is SaunaAutocompleteInitialState) {
                  return const Center(
                      child: Text('Začněte psát pro vyhledávání'));
                }

                if (state is SaunaAutocompleteLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state is SaunaAutocompleteErrorState) {
                  return const Center(child: Text('Chyba'));
                }

                throw Exception('Unknown state');
              },
            )
          ],
        ),
      ),
    );
  }
}
