import 'package:bon_appetit/services/inline_tag_parser.dart';
import 'package:flutter/material.dart';

import '../../others/details/body_text.dart';

class ArticleContentWidget extends StatelessWidget {
  final String text;

  const ArticleContentWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bold = InlineTagParser(text, "b");
    final header = InlineTagParser(text, "header");

    return DetailsBodyTextWidget(text);
  }

  String? get bold {
    final start = "<b>";
    final end = "<\/b>";

    final index = text.indexOf(end, start.length);

    if(index != -1) {
      print(text.substring(start.length, index)); // Start
      print(text.substring(index + end.length, text.length)); // End
    }

    return null;
  }
}
