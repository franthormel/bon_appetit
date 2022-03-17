import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../router/router.gr.dart';
import '../../../services/index.dart';

class RecipeDetailsRouterWidget extends StatelessWidget {
  final Recipe recipe;
  final Widget child;

  const RecipeDetailsRouterWidget({
    required this.child,
    required this.recipe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        final route = Provider.of<RouteProvider>(context, listen: false);
        route.push(RecipeDetailsRoute(recipe: recipe));
      },
    );
  }
}
