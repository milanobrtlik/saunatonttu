import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saunatonttu/page_nearest/view/sauna_list_card.dart';
import 'package:saunatonttu/module_profile/module_profile.dart';

import '../../sauna_detail/view/sauna_detail_page.dart';
import '../bloc/nearest_bloc.dart';

class NearestView extends StatefulWidget {
  const NearestView({Key? key}) : super(key: key);

  @override
  State<NearestView> createState() => _NearestViewState();
}

class _NearestViewState extends State<NearestView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            surfaceTintColor: Theme.of(context).colorScheme.surface,
            title: const Text('Saunatonttu'),
            floating: true,
            centerTitle: true,
            actions: const [
              MeButtonPage(),
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.zero,
            sliver: _List(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<NearestBloc>().add(NearestFetchMoreEvent());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class _List extends StatelessWidget {
  const _List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NearestBloc, NearestState>(
      builder: (context, state) {
        if (state is NearestLoadedState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index >= (state.list.edges?.length ?? 0)) {
                  return const BottomLoader();
                }
                return OpenContainer(
                  closedElevation: 0,
                  // tappable: false,
                  closedColor: Theme.of(context).colorScheme.surface,
                  transitionType: ContainerTransitionType.fadeThrough,
                  closedBuilder: (context, action) {
                    return SaunaListCard(
                      node: state.list.edges![index].node,
                      action: action,
                      position: state.myPosition,
                    );
                  },
                  openBuilder: (context, action) => SaunaDetailPage(
                    int.parse(state.list.edges![index].node.id),
                  ),
                );
              },
              childCount: state.list.pageInfo.hasNextPage
                  ? (state.list.edges?.length ?? 0) + 1
                  : state.list.edges?.length ?? 0,
            ),
          );
        }
        if (state is NearestFindingPositionState) {
          return const SliverFillRemaining(
            child: Center(child: Text('Upřesňování polohy...')),
          );
        }
        if (state is NearestLoadingState) {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
        throw Exception('Unknown state');
      },
    );
  }
}

class BottomLoader extends StatelessWidget {
  const BottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(strokeWidth: 1.5),
      ),
    );
  }
}
