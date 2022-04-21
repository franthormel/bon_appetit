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
    return const Text("Many");
  }
}
