import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/index.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsProvider>(context, listen: false);

    // TODO: Add controls and use the given provider's toggle methods
    // TODO: Improve with better UI
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Column(
        children: [
          Text(
              "#1 analyticsCollectionEnabled: ${settings.analyticsCollectionEnabled}"),
          Text(
              "#2 adStorageConsentGranted: ${settings.adStorageConsentGranted}"),
          Text(
              "#3 analyticsStorageConsentGranted: ${settings.analyticsStorageConsentGranted}"),
        ],
      ),
    );
  }
}
