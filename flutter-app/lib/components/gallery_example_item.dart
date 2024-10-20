import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';

class GalleryExampleItem {
  GalleryExampleItem({
    required this.id,
    required this.resource,
  });

  final String id;
  final String resource;
}

class GalleryExampleItemThumbnail extends StatelessWidget {
  const GalleryExampleItemThumbnail({
    Key? key,
    required this.galleryExampleItem,
    required this.onTap,
  }) : super(key: key);

  final GalleryExampleItem galleryExampleItem;

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: galleryExampleItem.id,
        child: AspectRatio(
          aspectRatio: 1,
          child: CachedNetworkImage(
            imageUrl: galleryExampleItem.resource,
            height: 80.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

List<GalleryExampleItem> galleryItems = <GalleryExampleItem>[
  GalleryExampleItem(
    id: "tag1",
    resource:
        "https://saunatonttu.s3.pl-waw.scw.cloud/pic/igNOOJcGWk6PuojumyXKcw.png",
  ),
  GalleryExampleItem(
    id: "tag2",
    resource:
        "https://saunatonttu.s3.pl-waw.scw.cloud/pic/NxtRdPfvs0CLlCnju0X8lQ.png",
  ),
  GalleryExampleItem(
    id: "tag3",
    resource:
        "https://saunatonttu.s3.pl-waw.scw.cloud/pic/26DfluDHE65e3mI4xhdYQ.png",
  ),
  GalleryExampleItem(
    id: "tag4",
    resource:
        "https://saunatonttu.s3.pl-waw.scw.cloud/pic/1Pfw6XPo60uinM5s8BvwHg.png",
  ),
  GalleryExampleItem(
    id: "tag5",
    resource:
        "https://saunatonttu.s3.pl-waw.scw.cloud/pic/1Pfw6XPo60uinM5s8BvwHg.png",
  ),
  GalleryExampleItem(
    id: "tag6",
    resource:
        "https://saunatonttu.s3.pl-waw.scw.cloud/pic/1Pfw6XPo60uinM5s8BvwHg.png",
  ),
  GalleryExampleItem(
    id: "tag7",
    resource:
        "https://saunatonttu.s3.pl-waw.scw.cloud/pic/1Pfw6XPo60uinM5s8BvwHg.png",
  ),
  GalleryExampleItem(
    id: "tag8",
    resource:
        "https://saunatonttu.s3.pl-waw.scw.cloud/pic/1Pfw6XPo60uinM5s8BvwHg.png",
  ),
  GalleryExampleItem(
    id: "tag9",
    resource:
        "https://saunatonttu.s3.pl-waw.scw.cloud/pic/1Pfw6XPo60uinM5s8BvwHg.png",
  ),
];
