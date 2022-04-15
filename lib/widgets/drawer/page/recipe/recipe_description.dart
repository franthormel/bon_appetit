import 'package:flutter/material.dart';

import '../../../others/horizontal_padding.dart';

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
        const SizedBox(height: 15.0),
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
