import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<PageSelectedEvent>(_onPageSelected);
  }

  FutureOr<void> _onPageSelected(
    PageSelectedEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeState(activePage: event.activePage));
  }
}
