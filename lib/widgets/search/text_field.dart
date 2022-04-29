import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import '../../../style/index.dart';
import 'filters/button.dart';

class SearchPageTextFieldWidget extends StatelessWidget {
  const SearchPageTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    final provider = Provider.of<SearchProvider>(context, listen: false);

    return Container(
      color: BonAppetitColors.white,
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextField(
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
                onPressed: provider.searchForResults,
              ),
            ),
            textInputAction: TextInputAction.search,
            onSubmitted: (text) {
              provider.searchForResults();
            },
            onChanged: provider.changeSearchText,
          ),
          const SearchFiltersButtonWidget()
        ],
      ),

      // TODO: Add recipe filters here as squared chips inside Wrap
    );
  }
}
