import 'package:flutter/material.dart';

import '../../../models/index.dart';

class RecipeDetailsTimeEntryWidget extends StatelessWidget {
  final RecipeTime timeEntry;

  const RecipeDetailsTimeEntryWidget(
    this.timeEntry, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          timeEntry.name.toUpperCase(),
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(width: 10.0),
        Text(
          timeEntry.value,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
