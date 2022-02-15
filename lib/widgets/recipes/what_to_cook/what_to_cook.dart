import 'package:flutter/material.dart';

import '../../designed_container.dart';
import '../../header_subtext.dart';
import '../../header_text.dart';
import 'what_to_cook_options.dart';
import 'what_to_cook_recipes.dart';

// Suggested recipes.
// Appears below main recipes
// Second from the top.
class WhatToCookWidget extends StatefulWidget {
  const WhatToCookWidget({Key? key}) : super(key: key);

  @override
  State<WhatToCookWidget> createState() => _WhatToCookWidgetState();
}

class _WhatToCookWidgetState extends State<WhatToCookWidget> {
  @override
  Widget build(BuildContext context) {
    return DesignedContainerWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          HeaderTextWidget(text: 'WHAT TO COOK TONIGHT'),
          Divider(color: Colors.transparent),
          HeaderSubtext(text: 'Fast, fresh and foolproof'),
          Divider(color: Colors.transparent),
          WhatToCookOptionsWidget(),
          Divider(color: Colors.transparent),
          WhatToCookRecipesWidget(),
        ],
      ),
    );
  }
}
