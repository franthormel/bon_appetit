import 'package:flutter/material.dart';

import '../../../others/horizontal_padding.dart';
import '../../../others/separator.dart';

class DrawerPageRecipeDescriptionWidget extends StatelessWidget {
  final String description;

  const DrawerPageRecipeDescriptionWidget(
    this.description, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SeparatorWidget(value: 15.0),
        HorizontalPaddingWidget(
          child: Text(
            description,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
