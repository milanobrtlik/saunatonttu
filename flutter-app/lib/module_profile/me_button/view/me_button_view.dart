import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/module_profile/components/components.dart';
import 'package:saunatonttu/module_profile/module_profile.dart';

class MeButtonView extends StatelessWidget {
  const MeButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MeBloc, MeState>(
      builder: (context, state) {
        return {
          MeLoadingState: (_) => const _Loading(),
          MeErrorState: (_) => const _Error(),
          MeLoadedState: (_) => _Loaded((state as MeLoadedState).me),
        }[state.runtimeType]!(state);
      },
    );
  }
}

class _Loaded extends StatelessWidget {
  const _Loaded(this.me, {Key? key}) : super(key: key);

  final Fragment$MeFragment me;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog(
        context: context,
        builder: (context) => const MeModalPage(),
      ),
      icon: UserAvatar(me),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      child: CircularProgressIndicator(),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      child: Text('ERR'),
    );
  }
}
