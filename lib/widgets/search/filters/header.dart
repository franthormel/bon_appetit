import 'package:flutter/material.dart';

class SearchPageFiltersHeaderWidget extends StatelessWidget {
  final String text;

  const SearchPageFiltersHeaderWidget(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: Theme.of(context)
          .textTheme
          .bodyText2
          ?.copyWith(fontWeight: FontWeight.w600),
    );
  }
}
