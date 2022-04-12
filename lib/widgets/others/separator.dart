import 'package:flutter/material.dart';

class SeparatorWidget extends StatelessWidget {
  final double value;
  final Axis direction;

  const SeparatorWidget({
    this.value = 25.0,
    this.direction = Axis.vertical,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.horizontal) {
      return SizedBox(width: value);
    }

    // Default is vertical
    return SizedBox(height: value);
  }
}
