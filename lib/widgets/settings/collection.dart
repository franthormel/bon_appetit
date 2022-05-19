import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/index.dart';
import 'header.dart';

class SettingsCollectionWidget extends StatelessWidget {
  const SettingsCollectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsProvider>(context, listen: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingsHeaderWidget(
          header: "Data collection",
          subHeader: "Controls in collecting data for analysis.",
        ),
        SwitchListTile.adaptive(
          title: const Text("Enable analytics collection"),
          value: settings.analyticsCollectionEnabled,
          onChanged: (value) {
            settings.toggleAnalyticsCollectionEnabled();
          },
        ),
      ],
    );
  }
}
