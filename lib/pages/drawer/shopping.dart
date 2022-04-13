import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class DrawerShoppingPage extends StatelessWidget {
  const DrawerShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DrawerPageHeaderWidget("Shopping", subHeader: "We just love these"),
      ],
    );
  }
}
