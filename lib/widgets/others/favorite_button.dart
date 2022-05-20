import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../../services/index.dart';

class FavoriteButtonWidget extends StatelessWidget {
  final String id;
  final ContentType type;

  const FavoriteButtonWidget({
    required this.id,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (FirebaseAuthService.isAuthenticated) {
      return IconButton(
        icon: const Icon(Icons.favorite),
        onPressed: () {
          // TODO: Call a function for favorites using the type and id property
        },
      );
    }

    return Container();
  }
}
