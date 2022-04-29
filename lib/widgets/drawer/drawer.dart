import 'package:flutter/material.dart';

import 'banner.dart';
import 'contents.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(bottom: 20.0),
        children: const [DrawerBannerWidget(), DrawerContentsWidget()],
      ),
    );
  }
}
