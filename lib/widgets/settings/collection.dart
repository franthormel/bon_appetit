import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/index.dart';
import 'header.dart';
import 'switch.dart';

class SettingsCollectionWidget extends StatelessWidget {
  const SettingsCollectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingsHeaderWidget(
          header: "Data Collection",
          subHeader: "Controls in collecting data for analysis.",
        ),
        SettingsSwitchWidget(
          title: "Enable analytics collection",
          value: settings.analyticsCollectionEnabled,
          onChanged: (value) {
            settings.toggleAnalyticsCollectionEnabled();
          },
        ),
      ],
    );
  }
}
