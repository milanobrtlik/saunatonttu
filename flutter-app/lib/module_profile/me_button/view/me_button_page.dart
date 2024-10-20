import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:saunatonttu/module_profile/module_profile.dart';

import 'me_button_view.dart';

class MeButtonPage extends StatelessWidget {
  const MeButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MeBloc(context.read<GraphQLClient>())..add(MeOpenedEvent()),
      child: const MeButtonView(),
    );
  }
}
