import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:saunatonttu/auth/jwt_provider.dart';
import 'package:saunatonttu/auth/login/view/login_page.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/module_profile/bloc/bloc.dart';
import 'package:saunatonttu/module_profile/components/components.dart';

class MeModalView extends StatelessWidget {
  const MeModalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MeBloc, MeState>(
      builder: (context, state) {
        return {
          MeLoadingState: (_) => const _Loading(),
          MeErrorState: (state) => _Error(state),
          MeLoadedState: (state) => _Loaded((state as MeLoadedState).me),
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
    return Dialog(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          // const SizedBox(height: 8),
          Stack(
            children: [
              Align(
                // alignment: Alignment.bottomCenter,
                child: Text(
                  'Saunatonttu',
                  style: TextStyle(fontSize: 24, height: 2),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => Navigator.of(context).maybePop(),
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: UserAvatar(me),
            title: Text(me.name ?? ''),
            subtitle: Text(me.email),
            // trailing: const Icon(Icons.expand_more),
            children: [
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Odhlásit'),
                onTap: () {
                  JwtProvider.clear();
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (route) => false,
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Dialog(
      child: Center(child: CircularProgressIndicator()),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error(this.state, {Key? key}) : super(key: key);
  final MeErrorState state;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Center(
        child: Text(state.message),
      ),
    );
  }
}
