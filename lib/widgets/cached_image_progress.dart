import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedImageProgressWidget extends StatelessWidget {
  final String imageUrl;

  const CachedImageProgressWidget({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fadeInCurve: Curves.easeInCubic,
      fadeInDuration: const Duration(seconds: 1),
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
