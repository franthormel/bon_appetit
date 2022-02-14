import 'package:bon_appetit/style/colors.dart';
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
      labelStyle: labelStyle(context),
    );
  }

  /// Returns [TextStyle] with its [color] properties set to
  /// [BonAppetitColors.white] if [selected] property is set to [true]
  TextStyle? labelStyle(BuildContext context) {
    final style = Theme.of(context).chipTheme.labelStyle;

    return selected ? style?.copyWith(color: BonAppetitColors.white) : style;
  }
}
