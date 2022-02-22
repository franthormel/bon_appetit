import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import '../../../designed_container.dart';
import '../../../header_section.dart';
import 'horizontal_list_contents.dart';
import 'horizontal_list_options.dart';

class HorizontalListRecipesWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final List<String> options;
  final List<Recipe> recipes;

  const HorizontalListRecipesWidget({
    required this.title,
    required this.subtitle,
    required this.options,
    required this.recipes,
    Key? key,
  }) : super(key: key);

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
          HeaderSectionWidget(
            title: widget.title,
            subtitle: widget.subtitle,
          ),
          const Divider(color: Colors.transparent),
          HorizontalListOptionsWidget(
            options: widget.options,
            onSelected: jumpToStartPosition,
          ),
          const Divider(color: Colors.transparent),
          HorizontalListRecipeContentsWidget(
            controller: scrollController,
            recipes: widget.recipes,
          ), // SOURCE NEW
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
