import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../horizontal_padding.dart';

class DetailsAuthorDateWidget extends StatelessWidget {
  final DateTime dateUploaded;
  final String? author;

  const DetailsAuthorDateWidget({
    required this.author,
    required this.dateUploaded,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Column(
        children: [
          if (author != null)
            Column(
              children: [
                Text(
                  "By ${author!}".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          Text(
            DateFormat.yMMMMd().format(dateUploaded),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
