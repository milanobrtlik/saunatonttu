part of 'nearest_bloc.dart';

@immutable
abstract class NearestState {}

class NearestLoadingState extends NearestState {}

class NearestFindingPositionState extends NearestState {}

class NearestLoadedState extends NearestState {
  final Query$saunaList$saunaList list;
  final Position? myPosition;

  NearestLoadedState({
    required this.list,
    required this.myPosition,
  });
}
