import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_other_event.dart';
part 'profile_other_state.dart';

class ProfileOtherBloc extends Bloc<ProfileOtherEvent, ProfileOtherState> {
  ProfileOtherBloc() : super(ProfileOtherInitial()) {
    on<ProfileOtherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
