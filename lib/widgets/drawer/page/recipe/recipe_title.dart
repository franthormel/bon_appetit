import 'package:flutter/material.dart';

import '../../../others/horizontal_padding.dart';

class DrawerPageRecipeTitleWidget extends StatelessWidget {
  final String title;

  const DrawerPageRecipeTitleWidget(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
        textAlign: TextAlign.center,
      ),
    );
  }
}
