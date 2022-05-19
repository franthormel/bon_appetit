import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/index.dart';
import 'header.dart';

class SettingsConsentWidget extends StatelessWidget {
  const SettingsConsentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsProvider>(context, listen: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingsHeaderWidget(
          header: "Data Consent",
          subHeader: "Controls in collecting data for analysis.",
        ),
        SwitchListTile.adaptive(
          title: const Text("Enable ad storage"),
          value: settings.adStorageConsentGranted,
          onChanged: (value) {
            settings.toggleAdStorageConsentGranted();
          },
        ),
        SwitchListTile.adaptive(
          title: const Text("Enable analytics storage"),
          value: settings.analyticsStorageConsentGranted,
          onChanged: (value) {
            settings.toggleAnalyticsStorageConsentGranted();
          },
        ),
      ],
    );
  }
}
