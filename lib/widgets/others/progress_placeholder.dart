import 'package:flutter/material.dart';

import '../../style/colors.dart';

class ProgressPlaceholderWidget extends StatelessWidget {
  final double aspectRatio;
  final bool isDark;
  final double? progress;

  const ProgressPlaceholderWidget({
    required this.aspectRatio,
    this.isDark = false,
    this.progress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(color: color),
          LinearProgressIndicator(value: progress),
        ],
      ),
    );
  }

  Color get color =>
      isDark ? BonAppetitColors.dimGray : BonAppetitColors.platinum;
}
