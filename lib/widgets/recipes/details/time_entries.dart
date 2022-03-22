import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/horizontal_padding.dart';
import 'others/time_entry.dart';

class RecipeDetailsTimeEntriesWidget extends StatelessWidget {
  final List<RecipeTime> timeEntries;

  const RecipeDetailsTimeEntriesWidget(
    this.timeEntries, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(child: Column(children: children));
  }

  List<Widget> get children {
    final widgets = <Widget>[];

    for (final timeEntry in timeEntries) {
      widgets.addAll([
        RecipeDetailsTimeEntryWidget(timeEntry),
        if (timeEntries.last != timeEntry) const SizedBox(height: 3.0),
      ]);
    }

    return widgets;
  }
}
