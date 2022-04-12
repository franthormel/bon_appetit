import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class DrawerRestaurantsPage extends StatelessWidget {
  const DrawerRestaurantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DrawerHeaderWidget("Restaurants"),
      ],
    );
  }
}
