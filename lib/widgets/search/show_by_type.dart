import 'package:flutter/material.dart';

class SearchPageShowByTypeWidget extends StatelessWidget {
  const SearchPageShowByTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: "Show results by type",
      icon: const Icon(Icons.filter_list_alt),
      onPressed: () {},
    );
  }
}
