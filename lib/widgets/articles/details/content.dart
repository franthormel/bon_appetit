import 'package:bon_appetit/services/inline_tag_parser.dart';
import 'package:flutter/material.dart';

import '../../others/details/body_text.dart';

const List<String> _tags = ["b", "header"];

class ArticleContentWidget extends StatelessWidget {
  final String text;

  final List<InlineTagParser> parsers = [];

  ArticleContentWidget(this.text, {Key? key}) : super(key: key) {
    parsers.addAll(_tags.map<InlineTagParser>((tag) {
      return InlineTagParser(text, tag);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return DetailsBodyTextWidget(text);
  }

  List<TextStyle> textStylesFromTag(String tag) {
    // TODO

    return [];
  }
}
