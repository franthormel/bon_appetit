import 'package:flutter/material.dart';

import '../../others/horizontal_padding.dart';

class VideoDetailsContentWidget extends StatelessWidget {
  final String title;
  final Widget child;

  const VideoDetailsContentWidget({
    required this.child,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(height: 15.0),
          child,
        ],
      ),
    );
  }
}
