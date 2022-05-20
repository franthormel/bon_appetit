import 'package:flutter/material.dart';

import '../../services/index.dart';

class FavoriteButtonWidget extends StatelessWidget {
  const FavoriteButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (FirebaseAuthService.isAuthenticated) {
      return IconButton(
        icon: const Icon(Icons.favorite),
        onPressed: () {},
      );
    }

    return Container();
  }
}
