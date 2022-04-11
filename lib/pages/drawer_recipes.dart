import 'package:flutter/material.dart';

import '../widgets/index.dart';

class DrawerRecipesPage extends StatelessWidget {
  const DrawerRecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DrawerHeaderWidget("Recipes"),
      ],
    );
  }
}
