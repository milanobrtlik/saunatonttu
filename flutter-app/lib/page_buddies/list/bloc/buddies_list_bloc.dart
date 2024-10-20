import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buddies_list_event.dart';
part 'buddies_list_state.dart';

class BuddiesListBloc extends Bloc<BuddiesListEvent, BuddiesListState> {
  BuddiesListBloc() : super(BuddiesListInitial()) {
    on<BuddiesListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
