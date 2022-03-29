import 'package:flutter/material.dart';

import '../horizontal_padding.dart';
import 'body_text.dart';

class DetailsBodyTextPaddedWidget extends StatelessWidget {
  final String text;

  const DetailsBodyTextPaddedWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(child: DetailsBodyTextWidget(text));
  }
}
