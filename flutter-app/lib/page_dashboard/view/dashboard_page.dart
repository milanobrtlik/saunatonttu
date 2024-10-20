import 'package:flutter/material.dart';
import 'package:saunatonttu/home/view/home_view.dart';
import 'package:saunatonttu/page_dashboard/view/dashboard_view.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashboardView(),
      bottomNavigationBar: SaunatonttuNavigationBar(),
    );
  }
}
