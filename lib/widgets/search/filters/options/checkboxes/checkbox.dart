import 'package:flutter/material.dart';

class SearchFiltersOptionsCheckboxWidget extends StatelessWidget {
  final String text;

  const SearchFiltersOptionsCheckboxWidget(
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
          onChanged: (checked) {
            print(checked);
          },
        ),
        Text(text),
      ],
    );
  }
}
