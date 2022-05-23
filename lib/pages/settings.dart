import 'package:flutter/material.dart';

import '../widgets/index.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldedWillPopWidget(
      appBar: AppBar(title: const Text("Settings")),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          SettingsCollectionWidget(),
          SizedBox(height: 24.0),
          SettingsConsentWidget(),
        ],
      ),
    );
  }
}
