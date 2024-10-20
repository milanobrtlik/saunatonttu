import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:saunatonttu/fragments.graphql.dart';

class SaunaGalleryView extends StatelessWidget {
  const SaunaGalleryView(this.list, {Key? key}) : super(key: key);

  final List<Fragment$Picture?>? list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      itemBuilder: (ctx, i) => GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => _GalleryWrapper(
              list: list,
              initialPage: i,
            ),
          ),
        ),
        child: Hero(
          tag: 'item-${list![i]!.id}',
          child: AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(
              imageUrl: list![i]!.thumbnailUrl,
              height: 96,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      itemCount: list?.length ?? 0,
    );
  }
}

class _GalleryWrapper extends StatefulWidget {
  _GalleryWrapper({
    required this.list,
    this.initialPage = 0,
    Key? key,
  })  : pageController = PageController(initialPage: initialPage);
  final List<Fragment$Picture?>? list;
  final PageController pageController;
  final int initialPage;

  @override
  State<_GalleryWrapper> createState() => _GalleryWrapperState();
}

class _GalleryWrapperState extends State<_GalleryWrapper> {
  late int currentIndex = widget.initialPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: PhotoViewGallery.builder(
          itemCount: widget.list?.length ?? 0,
          builder: (ctx, i) => PhotoViewGalleryPageOptions(
            imageProvider: CachedNetworkImageProvider(
              widget.list![i]!.fullSizeUrl,
            ),
            initialScale: PhotoViewComputedScale.contained,
            // minScale: PhotoViewComputedScale.contained * (.5 + i / 10),
            // maxScale: PhotoViewComputedScale.covered * 4.1,
            heroAttributes: PhotoViewHeroAttributes(
              tag: 'item-${widget.list![i]!.id}',
            ),
          ),
          pageController: widget.pageController,
          scrollPhysics: const BouncingScrollPhysics(),
          onPageChanged: (i) => setState(() {
            currentIndex = i;
          }),
        ),
      ),
    );
  }
}
