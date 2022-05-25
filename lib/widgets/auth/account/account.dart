import 'package:flutter/material.dart';

import 'favorites.dart';
import 'title.dart';

class AuthAccountPageWidget extends StatelessWidget {
  const AuthAccountPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      children: const [
        AuthAccountPageTitleWidget(),
        AuthAccountPageFavoritesWidget(),
      ],
    );
  }
}
