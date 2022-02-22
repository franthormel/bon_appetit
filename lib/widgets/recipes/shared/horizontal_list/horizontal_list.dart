import 'package:flutter/material.dart';

import '../../../designed_container.dart';
import '../../../header_section.dart';
import 'horizontal_list_options.dart';
import 'horizontal_list_contents.dart';

// Suggested recipes.
// Appears below main recipes
// Second from the top.
class HorizontalListRecipesWidget extends StatefulWidget {
  const HorizontalListRecipesWidget({Key? key}) : super(key: key);

  @override
  State<HorizontalListRecipesWidget> createState() => _WhatToCookWidgetState();
}

class _WhatToCookWidgetState extends State<HorizontalListRecipesWidget> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DesignedContainerWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeaderSectionWidget(
            title: 'What to cook tonight',
            subtitle: 'Fast, fresh and foolproof',
          ),
          const Divider(color: Colors.transparent),
          HorizontalListOptionsWidget(onSelected: jumpToStartPosition),
          const Divider(color: Colors.transparent),
          HorizontalListRecipeContentsWidget(controller: scrollController),
        ],
      ),
    );
  }

  void jumpToStartPosition() {
    if (scrollController.hasClients) {
      scrollController.jumpTo(scrollController.position.minScrollExtent);
    }
  }
}
