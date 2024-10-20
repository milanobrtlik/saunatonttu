import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/module_profile/module_profile.dart';
import 'package:saunatonttu/module_visits_history/list/list.dart';
import 'dart:collection';

class VisitsHistoryView extends StatelessWidget {
  const VisitsHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor: Theme.of(context).colorScheme.surface,
            title: const Text('Historie návštěv'),
            floating: true,
            centerTitle: true,
            actions: const [MeButtonPage()],
          ),
          BlocBuilder<VisitsHistoryBloc, VisitsHistoryState>(
            builder: (context, state) {
              return SliverPadding(
                padding: EdgeInsets.zero,
                sliver: {
                  VisitsHistoryLoadingState: (_) => const _Loading(),
                  VisitsHistoryLoadedState: (state) => _Loaded(state),
                  VisitsHistoryErrorState: (state) => _Error(state),
                }[state.runtimeType]!(state),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _Loaded extends StatelessWidget {
  const _Loaded(this.state, {Key? key}) : super(key: key);

  final VisitsHistoryLoadedState state;

  @override
  Widget build(BuildContext context) {
    final Map<String, List<Fragment$VisitHistoryListItem>> grouped = {};
    for (final item in state.list) {
      (grouped[DateFormat('MMMM yy').format(item.visitedAt)] ??= []).add(item);
    }
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (i > 0) const SizedBox(height: 8),
            Text(
              grouped.keys.elementAt(i),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                mainAxisExtent: 140,
              ),
              shrinkWrap: true,
              children: [
                for (final item in grouped[grouped.keys.elementAt(i)]!) ...[
                  Card(
                    elevation: 0,
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item.sauna.name),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
        childCount: grouped.length,
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error(this.state, {Key? key}) : super(key: key);

  final VisitsHistoryErrorState state;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: Text(state.message),
      ),
    );
  }
}
