import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:saunatonttu/fragments.graphql.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar(this.userFragment, {Key? key}) : super(key: key);
  final Fragment$UserFragment userFragment;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: userFragment.avatarUrl != null
          ? CachedNetworkImageProvider(userFragment.avatarUrl!)
          : null,
      child: userFragment.avatarUrl == null
          ? Text(userFragment.name!
              .split(' ')
              .map((s) => s[0])
              .join('')
              .toUpperCase())
          : null,
    );
  }
}
