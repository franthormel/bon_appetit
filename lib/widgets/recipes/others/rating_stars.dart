import 'package:flutter/material.dart';

class RatingStarsWidget extends StatelessWidget {
  final double? value;

  const RatingStarsWidget(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return value != null
        ? Row(children: _generateStars(value!.floor()))
        : Container();
  }

  List<Widget> _generateStars(int count) {
    List<Widget> widgets = [];
    const kMaxStars = 5;

    // Add the filled stars first (assuming the text direction is left-to-right) ...
    widgets = _addFilledStars(widgets, count);

    // ... then add the hollow stars
    widgets = _addHollowStars(widgets, kMaxStars - count);

    return widgets;
  }

  List<Widget> _addFilledStars(List<Widget> widgets, int count) =>
      _addIcons(widgets, count, Icons.star);

  List<Widget> _addHollowStars(List<Widget> widgets, int count) =>
      _addIcons(widgets, count, Icons.star_border);

  List<Widget> _addIcons(List<Widget> widgets, int count, IconData icon) {
    for (int i = 0; i < count; i++) {
      widgets.addAll([Icon(icon), const SizedBox(width: 4.0)]);
    }

    return widgets;
  }
}
