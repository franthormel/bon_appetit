import 'package:flutter/material.dart';

import '../../style/index.dart';

class SettingsSwitchWidget extends StatelessWidget {
  final void Function(bool) onChanged;
  final String title;
  final bool value;

  const SettingsSwitchWidget({
    required this.onChanged,
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      activeColor: BonAppetitColors.sizzlingSunrise,
      activeTrackColor: BonAppetitColors.mediumChampagne,
      inactiveTrackColor: BonAppetitColors.platinum,
      onChanged: onChanged,
      title: Text(title, style: const TextStyle(color: BonAppetitColors.black)),
      value: value,
    );
  }
}
