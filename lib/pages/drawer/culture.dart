import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class DrawerCulturePage extends StatelessWidget {
  const DrawerCulturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DrawerPageHeaderWidget(
          "Culture",
          subHeader: "Stories from around the world of food",
        ),
      ],
    );
  }
}
