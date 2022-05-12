import 'package:flutter/material.dart';

import '../../../style/index.dart';

class AuthAccountPageFavoritesWidget extends StatelessWidget {
  const AuthAccountPageFavoritesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.white,
      padding: const EdgeInsets.all(32.0),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "FAVORITES",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 16.0),
          // TODO: Put list of favorite recipes, articles, and videos here.
          const Text("Favorite items"),
        ],
      ),
    );
  }
}
