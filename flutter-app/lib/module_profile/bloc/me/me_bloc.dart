import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/module_profile/graphql/profile.graphql.dart';

part 'me_event.dart';
part 'me_state.dart';

class MeBloc extends Bloc<MeEvent, MeState> {
  MeBloc(this.client) : super(MeLoadingState()) {
    on<MeOpenedEvent>(_meOpened);
  }

  final GraphQLClient client;

  FutureOr<void> _meOpened(
    MeOpenedEvent event,
    Emitter<MeState> emit,
  ) async {
    emit(MeLoadingState());
    final result = await client.query$me();
    if(result.hasException) {
      emit(MeErrorState(result.exception.toString()));
      return;
    }

    final me = result.parsedData!.me;

    emit(MeLoadedState(me));
  }
}
