import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImageProgressWidget extends StatelessWidget {
  final String imageUrl;
  final double? height;

  const CachedImageProgressWidget({
    this.height,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fadeInCurve: Curves.easeInCubic,
      fadeInDuration: const Duration(seconds: 1),
      height: height,
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
