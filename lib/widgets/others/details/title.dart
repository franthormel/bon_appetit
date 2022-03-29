import 'package:flutter/material.dart';

import '../horizontal_padding.dart';

class DetailsTitleWidget extends StatelessWidget {
  final String title;

  const DetailsTitleWidget(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
