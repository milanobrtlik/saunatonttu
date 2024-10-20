import 'package:flutter/material.dart';
import 'package:saunatonttu/module_profile/module_profile.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor: Theme.of(context).colorScheme.surface,
            title: const Text('Články'),
            floating: true,
            centerTitle: true,
            actions: const [
              MeButtonPage(),
            ],
          ),
        ],
      ),
    );
  }
}
