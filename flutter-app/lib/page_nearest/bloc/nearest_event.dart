part of 'nearest_bloc.dart';

@immutable
abstract class NearestEvent {}

class NearestOpenedEvent extends NearestEvent {}

class NearestLocationFoundEvent extends NearestEvent {
  final double lat;
  final double lon;

  NearestLocationFoundEvent(this.lat, this.lon);
}

class NearestFetchMoreEvent extends NearestEvent {}

class NearestDataReceived extends NearestEvent {
  final QueryResult<Query$saunaList> queryResult;

  NearestDataReceived(this.queryResult);
}

class NearestFavoriteClickedEvent extends NearestEvent {
  final String saunaId;
  final bool isMyFavorite;

  NearestFavoriteClickedEvent(this.saunaId, this.isMyFavorite);
}
