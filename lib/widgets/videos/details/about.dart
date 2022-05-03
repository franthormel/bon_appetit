import 'package:flutter/material.dart';

import '../../../style/index.dart';
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
    final widgets = _textWidgets;

    return VideoDetailsContentWidget(
      title: "About",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widgets.isNotEmpty) ...widgets,
          VideoDetailsReleasedDateWidget(uploadDate: uploadDate),
        ],
      ),
    );
  }

  /// Returns the widget according to the number of lines in the [about] property.
  ///
  /// For each line, it returns a [Text] and followed by a [SizedBox] widget.
  List<Widget> get _textWidgets {
    final widgets = <Widget>[];

    if (about.isNotEmpty) {
      final lines = about.split("\r\n");

      for (final line in lines) {
        widgets.addAll([
          textWidget(line),
          const SizedBox(height: 10.0),
        ]);
      }
    }

    return widgets;
  }

  Text textWidget(String text) {
    return Text(text, style: BonAppetitThemeRadley.bodyText1);
  }
}
