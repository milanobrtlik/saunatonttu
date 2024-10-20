part of 'sauna_detail_bloc.dart';

@immutable
abstract class SaunaDetailState {}

class SaunaDetailLoadingState extends SaunaDetailState {}

class SaunaDetailLoadedState extends SaunaDetailState {
  final Fragment$SaunaFullDetail detail;

  SaunaDetailLoadedState(this.detail);
}

class SaunaDetailErrorState extends SaunaDetailState {}
