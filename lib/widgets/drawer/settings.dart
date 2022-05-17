import 'package:flutter/material.dart';

import 'entry.dart';

class DrawerSettingsWidget extends StatelessWidget {
  const DrawerSettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerAccountEntryWidget(
      "Settings",
      onTap: () {
        // TODO: Create page for setConsent() settings page
      },
    );
  }
}
