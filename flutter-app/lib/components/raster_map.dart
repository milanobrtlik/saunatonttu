import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';

import '../custom_graphql_scalars.dart';

class RasterMap extends StatefulWidget {
  const RasterMap(this.position, {Key? key}) : super(key: key);
  final Position position;

  @override
  State<RasterMap> createState() => _RasterMapState();
}

class _RasterMapState extends State<RasterMap> {
  late MapController controller;

  String provideUrl(int z, int x, int y) {
    final urls = [
      'https://a.tile.openstreetmap.org/$z/$x/$y.png',
      'https://b.tile.openstreetmap.org/$z/$x/$y.png',
      'https://c.tile.openstreetmap.org/$z/$x/$y.png',
    ];

    return urls[Random().nextInt(2)];
  }

  double clamp(double x, double min, double max) {
    if (x < min) x = min;
    if (x > max) x = max;

    return x;
  }

  void _onDoubleTap(MapTransformer transformer, Offset position) {
    const delta = 0.5;
    final zoom = clamp(controller.zoom + delta, 2, 18);

    transformer.setZoomInPlace(zoom, position);
    setState(() {});
  }

  Offset? _dragStart;
  double _scaleStart = 1.0;

  void _onScaleStart(ScaleStartDetails details) {
    _dragStart = details.focalPoint;
    _scaleStart = 1.0;
  }

  void _onScaleUpdate(ScaleUpdateDetails details, MapTransformer transformer) {
    final scaleDiff = details.scale - _scaleStart;
    _scaleStart = details.scale;

    if (scaleDiff > 0) {
      controller.zoom += 0.02;

      setState(() {});
    } else if (scaleDiff < 0) {
      controller.zoom -= 0.02;
      if (controller.zoom < 1) {
        controller.zoom = 1;
      }
      setState(() {});
    } else {
      final now = details.focalPoint;
      var diff = now - _dragStart!;
      _dragStart = now;
      final h = transformer.constraints.maxHeight;

      final vp = transformer.getViewport();
      if (diff.dy < 0 && vp.bottom - diff.dy < h) {
        diff = Offset(diff.dx, 0);
      }

      if (diff.dy > 0 && vp.top - diff.dy > 0) {
        diff = Offset(diff.dx, 0);
      }

      transformer.drag(diff.dx, diff.dy);
      setState(() {});
    }
  }

  Widget _buildMarkerWidget(Offset pos) {
    return Positioned(
      left: pos.dx - 24,
      top: pos.dy - 24,
      width: 48,
      height: 48,
      child: GestureDetector(
        child: Image.asset('assets/images/dot_pinlet-2-medium.png'),
        // child: Icon(
        //   icon,
        //   color: color,
        //   size: 48,
        // ),
        // onTap: () {
        //   showDialog(
        //     context: context,
        //     builder: (context) => const AlertDialog(
        //       content: Text('You have clicked a marker!'),
        //     ),
        //   );
        // },
      ),
    );
  }


  @override
  void initState() {
    controller = MapController(
      location: LatLng(
        widget.position.lat,
        widget.position.lon,
      ),
      zoom: 17,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MapLayout(
      controller: controller,
      builder: (context, transformer) {
        final pin = transformer.toOffset(LatLng(
          widget.position.lat,
          widget.position.lon,
        ));
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onDoubleTapDown: (details) => _onDoubleTap(
            transformer,
            details.localPosition,
          ),
          onScaleStart: _onScaleStart,
          onScaleUpdate: (details) => _onScaleUpdate(details, transformer),
          child: Listener(
            behavior: HitTestBehavior.opaque,
            onPointerSignal: (event) {
              if (event is PointerScrollEvent) {
                final delta = event.scrollDelta.dy / -1000.0;
                final zoom = clamp(controller.zoom + delta, 2, 18);

                transformer.setZoomInPlace(zoom, event.localPosition);
                setState(() {});
              }
            },
            child: Stack(
              children: [
                TileLayer(
                  builder: (context, x, y, z) {
                    final tilesInZoom = pow(2.0, z).floor();

                    while (x < 0) {
                      x += tilesInZoom;
                    }
                    while (y < 0) {
                      y += tilesInZoom;
                    }

                    x %= tilesInZoom;
                    y %= tilesInZoom;

                    return CachedNetworkImage(
                      imageUrl: provideUrl(z, x, y),
                      fit: BoxFit.cover,
                    );
                  },
                ),
                _buildMarkerWidget(transformer.toOffset(LatLng(
                  widget.position.lat,
                  widget.position.lon,
                ))),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ViewportPainter extends CustomPainter {
  ViewportPainter(this.viewport);

  final Rect viewport;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.white
      ..strokeWidth = 1;

    canvas.drawRect(viewport, paint);
  }

  @override
  bool shouldRepaint(covariant ViewportPainter oldDelegate) =>
      oldDelegate.viewport != viewport;
}
