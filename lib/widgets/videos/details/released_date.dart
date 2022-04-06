import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class VideoDetailsReleasedDateWidget extends StatelessWidget {
  final DateTime uploadDate;

  const VideoDetailsReleasedDateWidget({
    required this.uploadDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Released on ${DateFormat.yMd().format(uploadDate)}",
      style: Theme.of(context)
          .textTheme
          .caption
          ?.copyWith(fontWeight: FontWeight.w500, letterSpacing: 0.0),
    );
  }
}
