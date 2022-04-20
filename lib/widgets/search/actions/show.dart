import 'package:flutter/material.dart';

class SearchPageActionShowWidget extends StatelessWidget {
  const SearchPageActionShowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Show options as dropdown menu
    // TODO: Change to drop down with text
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: IconButton(
        tooltip: "Show results by type",
        icon: const Icon(Icons.filter_list_alt),
        onPressed: () {},
      ),
    );
  }
}
