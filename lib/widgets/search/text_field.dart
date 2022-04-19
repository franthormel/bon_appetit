import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import '../../../style/index.dart';

class SearchPageTextFieldWidget extends StatefulWidget {
  const SearchPageTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<SearchPageTextFieldWidget> createState() =>
      _SearchPageTextFieldWidgetState();
}

class _SearchPageTextFieldWidgetState extends State<SearchPageTextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final search = Provider.of<SearchProvider>(context, listen: false);

    // TODO: Change active color to black (focusBorder)
    return Container(
      color: BonAppetitColors.white,
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          focusColor: BonAppetitColors.black,
          helperStyle: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(fontWeight: FontWeight.w400, letterSpacing: 0.4),
          helperText: "10,000 matching results",
          // TODO: Get number of results from provider
          hintText: "Find a Recipe",
          prefixIcon: IconButton(
            color: BonAppetitColors.black,
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  color: BonAppetitColors.black,
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    search.clearText();
                    controller.clear();
                  },
                )
              : null,
        ),
        onChanged: (text) {
          setState(() {
            search.changeText(text);
          });
        },
      ),
    );
  }
}
