import 'package:flutter/material.dart';

class SearchPageFilterChipWidget extends StatelessWidget {
  final String text;

  const SearchPageFilterChipWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Style
    return Chip(
      label: Text(text),
    );
  }
}
