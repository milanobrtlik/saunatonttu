import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:saunatonttu/components/Icon_button_backgrounded.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/page_nearest/bloc/nearest_bloc.dart';

class SaunaListCard extends StatelessWidget {
  const SaunaListCard({
    required this.node,
    required this.action,
    required this.position,
    Key? key,
  }) : super(key: key);

  final Position? position;
  final Fragment$SaunaList node;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    String distance = '';
    if (position != null) {
      var km = Geolocator.distanceBetween(
            position!.latitude,
            position!.longitude,
            node.location.coordinates!.lat,
            node.location.coordinates!.lon,
          ) /
          1000;
      distance = '• ${km.toStringAsFixed(1)} km';
    }
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.tertiaryContainer,
      child: Column(
        children: [
          ListTile(
            title: Text(node.name),
            subtitle: Text('Otevřeno $distance • 7 / 24'),
            trailing: IconButtonBackgrounded(
              onPressed: () => context.read<NearestBloc>().add(
                  NearestFavoriteClickedEvent(node.id, !node.isMyFavorite)),
              icon: const Icon(Icons.favorite_border),
              iconChecked: const Icon(Icons.favorite_outlined),
              isChecked: node.isMyFavorite,
            ),
          ),
          if (node.leadParagraph != null && node.leadParagraph!.isNotEmpty)
            const ListTile(
              subtitle: Text(
                  'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'),
            ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 120,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) => ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CachedNetworkImage(
                      imageUrl: node.pictures!.nodes![i]!.thumbnailUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                itemCount: node.pictures?.nodes?.length ?? 0,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
