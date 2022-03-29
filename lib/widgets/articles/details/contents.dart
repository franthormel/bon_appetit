import 'package:flutter/material.dart';

import 'content.dart';
import '../../others/horizontal_padding.dart';

class ArticleDetailsContentsWidget extends StatelessWidget {
  final String content;

  const ArticleDetailsContentsWidget(
    this.content, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Column(children: contents.map<Widget>(widgets).toList()),
    );
  }

  Widget widgets(String text) {
    return Column(
      children: [
        ArticleContentWidget(text),
        if (text != contents.last) const SizedBox(height: 20.0),
      ],
    );
  }

  List<String> get contents => content.split("\r\n");
}
