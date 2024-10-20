import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saunatonttu/module_visits_history/list/bloc/bloc.dart';
import 'package:saunatonttu/module_visits_history/manage/view/visit_history_manage_page.dart';

class NearestHistoryFab extends StatelessWidget {
  const NearestHistoryFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fade,
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(56 / 2),
        ),
      ),
      tappable: true,
      closedBuilder: (_, action) => FloatingActionButton.extended(
        onPressed: action,
        label: const Text('Přidat'),
        icon: const Icon(Icons.add),
      ),
      openBuilder: (_, __) => BlocProvider.value(
        value: context.read<VisitsHistoryBloc>(),
        child: const VisitHistoryManagePage(),
      ),
    );
  }
}
