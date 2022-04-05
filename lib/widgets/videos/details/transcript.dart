import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../others/horizontal_padding.dart';

class VideoDetailsTranscriptWidget extends StatelessWidget {
  final String transcript;

  const VideoDetailsTranscriptWidget({
    required this.transcript,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lines = transcriptLines;

    return HorizontalPaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "TRANSCRIPT",
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(height: 10.0),
          Container(
            constraints: const BoxConstraints(maxHeight: 300.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              border: Border.all(color: BonAppetitColors.gainsboro),
            ),
            child: ListView.separated(
              itemCount: lines.length,
              itemBuilder: (context, index) => Text(lines[index]),
              primary: false,
              separatorBuilder: (context, index) => const SizedBox(height: 5.0),
              shrinkWrap: true,
            ),
          )
        ],
      ),
    );
  }

  List<String> get transcriptLines => transcript.split("\r\n");
}
