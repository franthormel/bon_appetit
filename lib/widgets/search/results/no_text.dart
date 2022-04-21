import 'package:flutter/material.dart';

class SearchPageResultsNoTextWidget extends StatelessWidget {
  final int count;

  const SearchPageResultsNoTextWidget({
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("$count matching results");
  }
}
