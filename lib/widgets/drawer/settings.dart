import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'entry.dart';
import '../../services/index.dart';
import '../../router/index.dart';

class DrawerSettingsWidget extends StatelessWidget {
  const DrawerSettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerAccountEntryWidget(
      "Settings",
      onTap: () {
        Provider.of<RouteProvider>(context, listen: false).push(
          const SettingsRoute(),
        );
      },
    );
  }
}
