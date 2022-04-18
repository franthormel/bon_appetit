import 'package:flutter/material.dart';

class SearchPageSortWidget extends StatelessWidget {
  const SearchPageSortWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: "Sort results",
      icon: const Icon(Icons.sort),
      onPressed: () {},
    );
  }
}
