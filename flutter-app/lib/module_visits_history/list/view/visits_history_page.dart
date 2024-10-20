import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:saunatonttu/home/view/home_view.dart';
import 'package:saunatonttu/module_visits_history/list/list.dart';

import 'visits_history_view.dart';

class VisitsHistoryPage extends StatelessWidget {
  const VisitsHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VisitsHistoryBloc(context.read<GraphQLClient>())
        ..add(VisitsHistoryOpenedEvent()),
      child: const Scaffold(
        body: VisitsHistoryView(),
        floatingActionButton: NearestHistoryFab(),
        bottomNavigationBar: SaunatonttuNavigationBar(),
      ),
    );
  }
}
