import 'package:flutter/material.dart';

class SearchPageActionControlMenuWidget extends StatelessWidget {
  final String title;
  final String value;

  const SearchPageActionControlMenuWidget({
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${title.toUpperCase()}:"),
        const SizedBox(width: 5.0),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
        const Icon(Icons.expand_more),
      ],
    );
  }
}
