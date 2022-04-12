import 'package:flutter/material.dart';

class DrawerPageRecipeTitleWidget extends StatelessWidget {
  final String title;

  const DrawerPageRecipeTitleWidget(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
