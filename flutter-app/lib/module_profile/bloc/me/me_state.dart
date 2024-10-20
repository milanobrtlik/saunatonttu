part of 'me_bloc.dart';

@immutable
abstract class MeState {}

class MeLoadingState extends MeState {}

class MeLoadedState extends MeState {
  final Fragment$MeFragment me;

  MeLoadedState(this.me);
}

class MeErrorState extends MeState {
  final String message;

  MeErrorState(this.message);
}
