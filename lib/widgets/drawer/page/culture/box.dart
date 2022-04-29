import 'package:flutter/material.dart';

import '../../../../style/index.dart';

class DrawerPageCultureBoxWidget extends StatelessWidget {
  final String title;

  const DrawerPageCultureBoxWidget(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.black,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 45.0),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.apply(color: BonAppetitColors.white),
      ),
    );
  }
}
