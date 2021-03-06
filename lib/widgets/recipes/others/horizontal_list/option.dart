import 'package:flutter/material.dart';

import '../../../../style/index.dart';

class HorizontalListOptionWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final void Function(bool) onSelected;

  const HorizontalListOptionWidget({
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
