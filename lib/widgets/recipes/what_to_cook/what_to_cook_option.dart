import 'package:flutter/material.dart';

class WhatToCookOptionWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final void Function(bool) onSelected;

  const WhatToCookOptionWidget({
    required this.label,
    required this.selected,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: onSelected,
    );
  }
}
