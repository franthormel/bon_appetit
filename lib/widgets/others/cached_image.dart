import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/index.dart';

/// If the [aspectRatio] property is not set this widget will try to look for an aspect ratio
/// in the [imageUrl] as an assumption that the [imageUrl] has one.
/// (Most of the urls for this project have one except for the videos' placeholders).
class CachedImageWidget extends StatelessWidget {
  final String imageUrl;

  /// Used by the [CachedNetworkImage]'s [errorWidget] and [placeholder] property.
  final ImageAspectRatio? aspectRatio;

  const CachedImageWidget(
    this.imageUrl, {
    this.aspectRatio,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      errorWidget: (context, url, error) => AspectRatio(
        aspectRatio: aspectRatioValue,
        child: Container(),
      ),
      imageUrl: imageUrl,
      fadeInCurve: Curves.easeInCubic,
      fadeInDuration: const Duration(milliseconds: 100),
      fadeOutCurve: Curves.easeOutCubic,
      fadeOutDuration: const Duration(milliseconds: 100),
      // TODO: Use AspectRatio, Stack, Container, and LinearProgressIndicator (or retain Circular)
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

  /// If the [aspectRatio] property is null, try to search for it in the [imageUrl] property.
  /// Otherwise, use the [aspectRatio.value].
  double get aspectRatioValue {
    if (aspectRatio == null) {
      ImageAspectRatio imageAspectRatio = imageAspectRatios[0];

      for (final ratio in imageAspectRatios) {
        if (imageUrl.contains(ratio.text)) {
          imageAspectRatio = ratio;
          break;
        }
      }

      return imageAspectRatio.value;
    }

    return aspectRatio!.value;
  }
}
