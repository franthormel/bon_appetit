import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../designed_container.dart';
import '../../header_subtext.dart';
import '../../header_text.dart';

/// Suggested recipes.
/// Appears below main recipes
/// Second from the top.
class WhatToCookWidget extends StatefulWidget {
  const WhatToCookWidget({Key? key}) : super(key: key);

  @override
  State<WhatToCookWidget> createState() => _WhatToCookWidgetState();
}

class _WhatToCookWidgetState extends State<WhatToCookWidget> {
  String selectedTag = "Pasta";

  @override
  Widget build(BuildContext context) {
    final recipeDataset = context.watch<RecipeDataset>();

    return DesignedContainerWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeaderTextWidget(text: 'WHAT TO COOK TONIGHT'),
          const Divider(color: Colors.transparent),
          const HeaderSubtext(text: 'Fast, fresh and foolproof'),
          const Divider(color: Colors.transparent),
          // TODO FIX THIS
          // Add an 'ALL' option
          // Place this against state instead of local variable
          // Best to create new widget that handles displaying chips as options, use callbacks and pass tags as its parameters
          Wrap(
            children: recipeDataset.suggestedTags
                .map((tag) => ChoiceChip(
                      label: Text(tag),
                      selected: selectedTag == tag,
                      onSelected: (selected) => setState(() {
                        selectedTag = tag;
                      }),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
