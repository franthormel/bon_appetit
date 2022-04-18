import 'package:flutter/material.dart';

class SearchPageResultsListWidget extends StatelessWidget {
  const SearchPageResultsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: List.generate(40, <int>(i) => i)
            .map<Widget>((i) => Text("$i"))
            .toList(),
      ),
    );
  }
}
