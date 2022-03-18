import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/index.dart';
import '../../../../router/router.gr.dart';
import '../../../../services/index.dart';

class ArticleDetailsWidget extends StatelessWidget {
  final Article article;
  final Widget child;

  const ArticleDetailsWidget({
    required this.article,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        final route = Provider.of<RouteProvider>(context, listen: false);
        route.push(ArticleDetailsRoute(article: article));
      },
    );
  }
}
