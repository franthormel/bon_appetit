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
    return const Text("None");
  }
}
