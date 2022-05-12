import 'package:flutter/material.dart';

import 'favorites.dart';
import 'title.dart';

class AuthAccountPageWidget extends StatelessWidget {
  const AuthAccountPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [
          AuthAccountPageTitleWidget(),
          AuthAccountPageFavoritesWidget(),
        ],
      ),
    );
  }
}
