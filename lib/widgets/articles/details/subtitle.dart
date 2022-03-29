import 'package:flutter/material.dart';

import '../../others/horizontal_padding.dart';

class ArticleDetailsSubtitleWidget extends StatelessWidget {
  final String subtitle;

  const ArticleDetailsSubtitleWidget(
    this.subtitle, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
