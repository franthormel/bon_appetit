import 'package:flutter/material.dart';

import '../../others/details/body_text.dart';
import '../../../services/index.dart';
import '../../../models/index.dart';

class ArticleContentWidget extends StatelessWidget {
  final String text;

  final List<InlineTagParser> parsers = [];

  ArticleContentWidget(this.text, {Key? key}) : super(key: key) {
    parsers.addAll(InlineTag.values.map<InlineTagParser>((tag) {
      return InlineTagParser(text, tag);
    }));
  }

  @override
  Widget build(BuildContext context) {
    if (parser.hasInlineTag) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsBodyTextWidget(parser.textHead!, parser: parser),
          const SizedBox(height: 5.0),
          DetailsBodyTextWidget(parser.textTail!),
        ],
      );
    }

    return DetailsBodyTextWidget(text);
  }

  InlineTagParser get parser {
    // Currently we are assuming that the text only contains
    // one (1) associated tag. So if there is a "b" tag there is
    // nothing else.
    //
    // However if future use cases are added, this part and the
    // enum [InlineTag] in the models directory will be updated.
    // TODO FIX BUG HEADER NOT WORKING
    return parsers[0];
  }
}
