import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/index.dart';
import 'progress_placeholder.dart';

/// If the [imageAspectRatio] property is not set this widget will try to look for an aspect ratio
/// in the [imageUrl] as an assumption that the [imageUrl] has one.
/// (Most of the urls for this project have one except for the videos' placeholders).
class CachedImageWidget extends StatelessWidget {
  final String imageUrl;

  /// Used by the [CachedNetworkImage]'s [errorWidget] and [placeholder] property.
  final ImageAspectRatio? imageAspectRatio;

  final bool isDark;

  const CachedImageWidget(
    this.imageUrl, {
    this.imageAspectRatio,
    this.isDark = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = aspectRatio;

    return CachedNetworkImage(
      errorWidget: (context, url, error) =>
          ProgressPlaceholderWidget(aspectRatio: value, isDark: isDark),
      imageUrl: imageUrl,
      fadeInCurve: Curves.easeInCubic,
      fadeInDuration: const Duration(milliseconds: 100),
      fadeOutCurve: Curves.easeOutCubic,
      fadeOutDuration: const Duration(milliseconds: 100),
      progressIndicatorBuilder: (context, url, progress) {
        return ProgressPlaceholderWidget(
          aspectRatio: value,
          isDark: isDark,
          progress: progress.progress,
        );
      },
      useOldImageOnUrlChange: true,
    );
  }

  /// If the [imageAspectRatio] property is null, try to search for it in the [imageUrl] property.
  /// Otherwise, use the [imageAspectRatio.value].
  double get aspectRatio {
    if (imageAspectRatio == null) {
      ImageAspectRatio imageAspectRatio = imageAspectRatios[0];

      for (final ratio in imageAspectRatios) {
        if (imageUrl.contains(ratio.text)) {
          imageAspectRatio = ratio;
          break;
        }
      }

      return imageAspectRatio.value;
    }

    return imageAspectRatio!.value;
  }
}
