import 'package:flutter/material.dart';

class SearchPageResultsNoneWidget extends StatelessWidget {
  final int count;
  final String text;

  const SearchPageResultsNoneWidget({
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
          const TextSpan(text: "Uh oh. We didn't find the search term "),
          TextSpan(
            text: "\"$text\"",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.apply(fontStyle: FontStyle.italic),
          ),
          const TextSpan(text: " that you were looking for."),
        ],
      ),
    );
  }
}
