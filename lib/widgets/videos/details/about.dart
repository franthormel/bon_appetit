import 'package:flutter/material.dart';

import '../../../style/theme_radley.dart';
import 'content.dart';
import 'released_date.dart';

class VideoDetailsAboutWidget extends StatelessWidget {
  final String about;
  final DateTime uploadDate;

  const VideoDetailsAboutWidget({
    required this.about,
    required this.uploadDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoDetailsContentWidget(
      title: "About",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...textWidgets,
          VideoDetailsReleasedDateWidget(uploadDate: uploadDate),
        ],
      ),
    );
  }

  /// Returns the widget according to the number of lines in the [about] property.
  ///
  /// For each line, it returns a [Text] and followed by a [SizedBox] widget.
  List<Widget> get textWidgets {
    final widgets = <Widget>[];
    final lines = about.split("\r\n");

    for (final line in lines) {
      widgets.addAll([
        textWidget(line),
        const SizedBox(height: 10.0),
      ]);
    }

    return widgets;
  }

  Text textWidget(String text) {
    return Text(text, style: BonAppetitThemeRadley.bodyText1);
  }
}
