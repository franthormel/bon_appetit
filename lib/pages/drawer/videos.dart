import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class DrawerVideosPage extends StatelessWidget {
  const DrawerVideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DrawerPageHeaderWidget("Videos"),
      ],
    );
  }
}
