import 'package:flutter/material.dart';

class SearchPageFilterDialogCheckboxWidget extends StatelessWidget {
  final String text;

  const SearchPageFilterDialogCheckboxWidget(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Connect to SearchProvider
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Text(text),
      ],
    );
  }
}
