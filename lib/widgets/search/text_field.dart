import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import '../../../style/index.dart';
import 'actions/filter.dart';

class SearchPageTextFieldWidget extends StatefulWidget {
  const SearchPageTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<SearchPageTextFieldWidget> createState() =>
      _SearchPageTextFieldWidgetState();
}

class _SearchPageTextFieldWidgetState extends State<SearchPageTextFieldWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);

    return Container(
      color: BonAppetitColors.white,
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5),
          ),
          hintText: "Find a Recipe",
          prefixIcon: IconButton(
            color: BonAppetitColors.black,
            icon: const Icon(Icons.search),
            onPressed: () {
              provider.refreshSearchResults();
            },
          ),
          suffixIcon: const SearchPageActionFilterWidget(),
        ),
        onSubmitted: (text) {
          provider.refreshSearchResults();
        },
        onChanged: (text) {
          // TODO: Do we really need to call setState?
          setState(() {
            provider.changeText(text);
          });
        },
      ),

      // TODO: Add wrapped filters here as squared chips
    );
  }
}
