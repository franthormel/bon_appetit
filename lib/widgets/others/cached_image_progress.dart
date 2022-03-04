import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImageProgressWidget extends StatelessWidget {
  final String imageUrl;

  const CachedImageProgressWidget(
    this.imageUrl, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fadeInCurve: Curves.ease,
      progressIndicatorBuilder: (context, url, progress) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(value: progress.progress),
          ),
        );
      },
    );
  }
}
