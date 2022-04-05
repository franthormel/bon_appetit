import 'package:flutter/material.dart';

import '../../others/horizontal_padding.dart';

class VideoDetailsAboutCreditsWidget extends StatelessWidget {
  final String about;
  final List<String>? credits;

  const VideoDetailsAboutCreditsWidget({
    required this.about,
    required this.credits,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Display [about], [credits] if any, as a tabbed view
    // TODO: FIX last error (Horizontal viewport was given unbounded height.)
    return const HorizontalPaddingWidget(
      child:
          Text("// TODO: Display [about], [credits] if any, as a tabbed view"),
    );
  }
}
