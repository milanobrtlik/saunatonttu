part of 'home_bloc.dart';

enum ActivePage {
  dashboard,
  nearest,
  buddies,
  visitsLog,
  articles,
}

class HomeState {
  final ActivePage activePage;

  HomeState({this.activePage = ActivePage.nearest});
}
