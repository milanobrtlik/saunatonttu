import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:saunatonttu/sauna_detail/bloc/sauna_detail_bloc.dart';
import 'package:saunatonttu/sauna_detail/view/sauna_detail_view.dart';

class SaunaDetailPage extends StatelessWidget {
  const SaunaDetailPage(this.saunaId, {Key? key}) : super(key: key);

  final int saunaId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SaunaDetailBloc(
        context.read<GraphQLClient>(),
      )..add(SaunaDetailEnteredEvent(saunaId)),
      child: const SaunaDetailView(),
    );
  }
}
