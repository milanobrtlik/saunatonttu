import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saunatonttu/components/components.dart';
import 'package:saunatonttu/components/raster_map.dart';
import 'package:saunatonttu/sauna_detail/bloc/sauna_detail_bloc.dart';
import 'package:saunatonttu/sauna_detail/view/sauna_gallery_view.dart';
import 'package:saunatonttu/sauna_detail/view/sauna_info_view.dart';

class _SaunaDetailView extends StatelessWidget {
  const _SaunaDetailView(this.state, {Key? key}) : super(key: key);

  final SaunaDetailLoadedState state;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(state.detail.name),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'INFORMACE'),
              Tab(text: 'FOTKY'),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SaunaInfoView(state.detail),
            SaunaGalleryView(state.detail.pictures?.nodes),
          ],
        ),
      ),
    );
  }
}

class SaunaDetailView extends StatelessWidget {
  const SaunaDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaunaDetailBloc, SaunaDetailState>(
      builder: (ctx, state) {
        if (state is SaunaDetailLoadedState) {
          return _SaunaDetailView(state);
        }
        if (state is SaunaDetailLoadingState) {
          return const LoadingScaffoldAppBar();
        }

        return const ErrorScaffold();
      },
    );
  }
}
