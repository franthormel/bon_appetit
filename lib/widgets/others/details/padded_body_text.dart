import 'package:flutter/material.dart';

import '../horizontal_padding.dart';
import 'body_text.dart';

class DetailsPaddedBodyTextWidget extends StatelessWidget {
  final String text;

  const DetailsPaddedBodyTextWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(child: DetailsBodyTextWidget(text));
  }
}
