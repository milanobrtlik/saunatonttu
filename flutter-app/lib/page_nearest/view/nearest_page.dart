import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:saunatonttu/home/view/home_view.dart';
import 'package:saunatonttu/page_nearest/bloc/nearest_bloc.dart';
import 'package:saunatonttu/page_nearest/view/nearest_view.dart';

class NearestPage extends StatelessWidget {
  const NearestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NearestBloc(
        context.read<GraphQLClient>(),
      )..add(NearestOpenedEvent()),
      child: const Scaffold(
        body: NearestView(),
        bottomNavigationBar: SaunatonttuNavigationBar(),
      ),
    );
  }
}
