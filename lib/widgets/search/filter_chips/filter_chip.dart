import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import '../../../style/index.dart';

class SearchPageFilterChipWidget extends StatelessWidget {
  final String text;

  const SearchPageFilterChipWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);

    return Chip(
      deleteIcon: const Icon(Icons.close, size: 16.0),
      deleteIconColor: BonAppetitColors.white,
      backgroundColor: BonAppetitColors.black,
      label: Text(
        text,
        style: const TextStyle(color: BonAppetitColors.white, fontSize: 12.0),
      ),
      onDeleted: () {
        provider.removeFilter(text);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: BorderSide.none,
      ),
    );
  }
}
