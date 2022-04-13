import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class DrawerCookingPage extends StatelessWidget {
  const DrawerCookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DrawerPageHeaderWidget("Cooking",
            subHeader: "Tips, tricks and techniques"),
      ],
    );
  }
}
