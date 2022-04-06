import 'package:flutter/material.dart';

import 'content.dart';

class VideoDetailsCreditsWidget extends StatelessWidget {
  final List<String> credits;

  const VideoDetailsCreditsWidget({
    required this.credits,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoDetailsContentWidget(
      title: "Credits",
      child: Text("Starring $people"),
    );
  }

  /// Returns [String] for the accreditations with commas in-between.
  String get people {
    String value = "";

    for (final credit in credits) {
      value += credit;

      if (credits.last != credit) {
        value += ", ";
      }
    }

    return value;
  }
}
