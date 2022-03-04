import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import '../../../others/designed_container.dart';
import '../../../others/header_section.dart';
import 'horizontal_list_contents.dart';
import 'horizontal_list_options.dart';

class HorizontalListRecipesWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final RecipeList type;

  const HorizontalListRecipesWidget({
    required this.title,
    required this.subtitle,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesignedContainerWidget(
      child: Column(
        children: [
          HeaderSectionWidget(
            title: title,
            subtitle: subtitle,
          ),
          const SizedBox(height: 25.0),
          HorizontalListOptionsWidget(type: type),
          const SizedBox(height: 25.0),
          HorizontalListRecipeContentsWidget(type: type),
        ],
      ),
    );
  }
}
