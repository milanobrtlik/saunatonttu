import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:graphql/client.dart';
import 'package:saunatonttu/module_visits_history/list/bloc/bloc.dart';
import 'package:saunatonttu/module_visits_history/manage/bloc/sauna_visit_manage_bloc.dart';

import 'visit_history_manage_view.dart';

class VisitHistoryManagePage extends StatelessWidget {
  const VisitHistoryManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SaunaVisitManageBloc(
        client: context.read<GraphQLClient>(),
      ),
      child: BlocListener<SaunaVisitManageBloc, SaunaVisitManageState>(
        listener: (context, state) {
          if(state.status == FormzStatus.submissionSuccess) {
            context.read<VisitsHistoryBloc>().add(VisitsHistoryRefetchEvent());
            Navigator.of(context).pop();
          }
        },
        child: const VisitHistoryManageView(),
      ),
    );
  }
}
