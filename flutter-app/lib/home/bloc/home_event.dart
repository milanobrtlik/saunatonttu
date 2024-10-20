part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class PageSelectedEvent extends HomeEvent {
  final ActivePage activePage;

  PageSelectedEvent(this.activePage);
}
