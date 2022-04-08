import 'package:flutter/material.dart';

import '../horizontal_padding.dart';

class DetailsTitleWidget extends StatelessWidget {
  final String title;
  final TextAlign? textAlign;

  const DetailsTitleWidget(
    this.title, {
    this.textAlign,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Text(
        title,
        textAlign: textAlign ?? TextAlign.center,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
