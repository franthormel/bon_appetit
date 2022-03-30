import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../services/index.dart';
import '../../others/details/body_text.dart';

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
    // Assume the first parser has an inline tag and content as placeholder.
    InlineTagParser value = parsers[0];

    for (final p in parsers) {
      // Currently we are assuming that the text only contains
      // one (1) associated tag. So if there is a "b" tag there is
      // nothing else ...
      if (p.hasInlineTag) {
        value = p;

        // However if future use cases are added, this break statement
        // will no longer be applicable.
        break;
      }
    }

    return value;
  }
}
