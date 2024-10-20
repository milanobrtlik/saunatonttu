import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saunatonttu/home/bloc/home_bloc.dart';
import 'package:saunatonttu/page_articles/view/articles_page.dart';
import 'package:saunatonttu/page_buddies/list/view/buddies_list_page.dart';
import 'package:saunatonttu/page_dashboard/view/dashboard_page.dart';
import 'package:saunatonttu/page_nearest/view/nearest_page.dart';
import 'package:saunatonttu/module_visits_history/module_visits.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return {
          ActivePage.dashboard: () => const DashboardPage(),
          ActivePage.nearest: () => const NearestPage(),
          ActivePage.buddies: () => const BuddiesListPage(),
          ActivePage.visitsLog: () => const VisitsHistoryPage(),
          ActivePage.articles: () => const ArticlesPage(),
        }[state.activePage]!();
      },
    );
  }
}

class SaunatonttuNavigationBar extends StatelessWidget {
  const SaunatonttuNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return NavigationBar(
          onDestinationSelected: (index) => context
              .read<HomeBloc>()
              .add(PageSelectedEvent(ActivePage.values[index])),
          selectedIndex: state.activePage.index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.dashboard_outlined),
              selectedIcon: Icon(Icons.dashboard),
              label: 'Přehled',
            ),
            NavigationDestination(
              icon: Icon(Icons.explore_outlined),
              selectedIcon: Icon(Icons.explore),
              label: 'Nejbližší',
            ),
            NavigationDestination(
              icon: Icon(Icons.groups_outlined),
              selectedIcon: Icon(Icons.groups),
              label: 'Parťáci',
            ),
            NavigationDestination(
              icon: Icon(Icons.history_outlined),
              selectedIcon: Icon(Icons.history),
              label: 'Návštěvy',
            ),
            NavigationDestination(
              icon: Icon(Icons.newspaper_outlined),
              selectedIcon: Icon(Icons.newspaper),
              label: 'Články',
            ),
          ],
        );
      },
    );
  }
}
