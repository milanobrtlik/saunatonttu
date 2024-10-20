import 'package:flutter/material.dart';
import 'package:saunatonttu/home/view/home_view.dart';
import 'package:saunatonttu/page_buddies/list/view/buddies_list_view.dart';

class BuddiesListPage extends StatelessWidget {
  const BuddiesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BuddiesListView(),
      bottomNavigationBar: SaunatonttuNavigationBar(),
    );
  }
}
