import 'package:flutter/material.dart';

import 'header.dart';

class DrawerPageWidget extends StatelessWidget {
  final IndexedWidgetBuilder builder;
  final int count;
  final String title;
  final String? subHeader;

  const DrawerPageWidget({
    required this.builder,
    required this.count,
    required this.title,
    this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: DrawerHeaderWidget(title, subHeader: subHeader),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(builder, childCount: count),
        ),
      ],
    );
  }
}
