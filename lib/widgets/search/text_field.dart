import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import '../../../style/index.dart';

class SearchPageTextFieldWidget extends StatelessWidget {
  const SearchPageTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);
    final controller = TextEditingController(text: provider.text);

    return TextField(
      controller: controller,
      cursorColor: BonAppetitColors.black,
      decoration: InputDecoration(
        hintText: "Find a Recipe",
        prefixIcon: IconButton(
          color: BonAppetitColors.black,
          icon: const Icon(Icons.search),
          onPressed: provider.searchForResults,
        ),
      ),
      textInputAction: TextInputAction.search,
      onChanged: provider.changeText,
      onSubmitted: (text) {
        provider.searchForResults();
      },
    );
  }
}
