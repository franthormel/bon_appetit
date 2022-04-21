import 'package:flutter/material.dart';

import 'results_many.dart';
import 'results_none.dart';

class SearchPageResultsTextWidget extends StatelessWidget {
  final int count;
  final String text;

  const SearchPageResultsTextWidget({
    required this.count,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return count > 0
        ? SearchPageResultsManyWidget(count: count, text: text)
        : SearchPageResultsNoneWidget(count: count, text: text);
  }
}
