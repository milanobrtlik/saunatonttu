import 'package:flutter/material.dart';
import 'package:saunatonttu/components/raster_map.dart';
import 'package:saunatonttu/fragments.graphql.dart';

class SaunaInfoView extends StatelessWidget {
  const SaunaInfoView(this.detail, {Key? key}) : super(key: key);

  final Fragment$SaunaFullDetail detail;

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    final desc = <Widget>[];
    if (detail.address != null) {
      desc.add(ListTile(
        leading: Icon(Icons.pin_drop, color: primary),
        title: Text(detail.address!),
      ));
    }
    if (detail.phone != null) {
      desc.add(
        ListTile(
          leading: Icon(Icons.phone, color: primary),
          title: Text(detail.phone!),
        ),
      );
    }
    desc.add(ListTile(
      leading: Icon(Icons.access_time, color: primary),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Otevřeno',
            style: TextStyle(color: Colors.lightGreen),
          ),
          Text(' • '),
          Text('Zavírá 23:00'),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.expand_more),
      ),
    ));
    if (detail.url != null) {
      desc.add(ListTile(
        leading: Icon(Icons.public, color: primary),
        title: Text(detail.url!),
      ));
    }
    desc.add(ListTile(
      leading: Icon(Icons.credit_card, color: primary),
      title: const Text('150 - 480 Kč'),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.expand_more),
      ),
    ));
    desc.add(ListTile(
      leading: Icon(Icons.history, color: primary),
      title: const Text('Naposled: před 3 týdny'),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.expand_more),
      ),
    ));
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 240,
            child: RasterMap(detail.location.coordinates!),
          ),
          const SizedBox(height: 8),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: desc.length,
            itemBuilder: (ctx, i) => desc[i],
            separatorBuilder: (ctx, i) => const Divider(height: 1),
          ),
        ],
      ),
    );
  }
}
