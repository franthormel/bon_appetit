import 'package:flutter/material.dart';

class SearchPageListItemWidget extends StatelessWidget {
  final String category;
  final bool hasOverlayPlayButton;
  final String imageUrl;
  final String title;

  const SearchPageListItemWidget({
    required this.category,
    this.hasOverlayPlayButton = false,
    required this.imageUrl,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Update
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {},
      ),
    );
  }
}
