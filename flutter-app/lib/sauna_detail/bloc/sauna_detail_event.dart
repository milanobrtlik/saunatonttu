part of 'sauna_detail_bloc.dart';

@immutable
abstract class SaunaDetailEvent {}

class SaunaDetailEnteredEvent extends SaunaDetailEvent {
  final int id;

  SaunaDetailEnteredEvent(this.id);
}
