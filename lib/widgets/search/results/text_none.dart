import 'package:flutter/material.dart';

class SearchPageResultsTextNoneWidget extends StatelessWidget {
  final int count;

  const SearchPageResultsTextNoneWidget({
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$count matching results",
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
