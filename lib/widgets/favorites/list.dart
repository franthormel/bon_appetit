import 'package:flutter/material.dart';

class FavoritesListWidget extends StatelessWidget {
  final List<Widget> children;

  const FavoritesListWidget({
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8.0),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, i) => children[i],
      itemCount: children.length,
      separatorBuilder: (context, i) => const SizedBox(height: 12.0),
    );
  }
}
