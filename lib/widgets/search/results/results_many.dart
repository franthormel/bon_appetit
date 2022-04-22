import 'package:flutter/material.dart';

class SearchPageResultsManyWidget extends StatelessWidget {
  final int count;
  final String text;

  const SearchPageResultsManyWidget({
    required this.count,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyText2,
        children: [
          TextSpan(text: "$count matching results for "),
          TextSpan(
            text: "\"$text\"",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.apply(fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
