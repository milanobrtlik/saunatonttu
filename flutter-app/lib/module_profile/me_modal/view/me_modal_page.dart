import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:saunatonttu/module_profile/bloc/bloc.dart';

import 'me_modal_view.dart';

class MeModalPage extends StatelessWidget {
  const MeModalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MeBloc(
        context.read<GraphQLClient>()
      )..add(MeOpenedEvent()),
      child: const MeModalView(),
    );
  }
}
