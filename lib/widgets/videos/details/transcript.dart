import 'package:flutter/material.dart';

import '../../../style/index.dart';
import 'content.dart';

class VideoDetailsTranscriptWidget extends StatelessWidget {
  final String transcript;

  const VideoDetailsTranscriptWidget({
    required this.transcript,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lines = transcriptLines;

    return VideoDetailsContentWidget(
      title: "Transcript",
      child: Container(
        constraints: const BoxConstraints(maxHeight: 300.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          border: Border.all(color: BonAppetitColors.gainsboro),
        ),
        child: ListView.separated(
          itemCount: lines.length,
          itemBuilder: (context, i) => Text(lines[i]),
          primary: false,
          separatorBuilder: (context, i) => const SizedBox(height: 5.0),
          shrinkWrap: true,
        ),
      ),
    );
  }

  List<String> get transcriptLines => transcript.split("\r\n");
}
