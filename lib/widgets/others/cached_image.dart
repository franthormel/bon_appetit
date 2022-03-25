import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImageWidget extends StatelessWidget {
  final String imageUrl;

  const CachedImageWidget(this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fadeInCurve: Curves.easeInCubic,
      fadeInDuration: const Duration(milliseconds: 100),
      fadeOutCurve: Curves.easeOutCubic,
      fadeOutDuration: const Duration(milliseconds: 100),
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
