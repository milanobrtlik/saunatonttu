import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buddies_manage_event.dart';
part 'buddies_manage_state.dart';

class BuddiesManageBloc extends Bloc<BuddiesManageEvent, BuddiesManageState> {
  BuddiesManageBloc() : super(BuddiesManageInitial()) {
    on<BuddiesManageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
