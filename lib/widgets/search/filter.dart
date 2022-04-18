import 'package:flutter/material.dart';

class SearchPageFilterWidget extends StatelessWidget {
  const SearchPageFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: "Filter results",
      icon: const Icon(Icons.tune),
      onPressed: () {},
    );
  }
}
