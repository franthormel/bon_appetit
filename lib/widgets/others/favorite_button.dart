import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final favorites = Provider.of<FavoritesProvider>(context);
    final icon = _chooseIcon(favorites);

    if (FirebaseAuthService.isAuthenticated) {
      return IconButton(
        icon: icon,
        onPressed: () {
          favorites.toggleFavorite(id, type);
        },
      );
    }

    return Container();
  }

  Icon _chooseIcon(FavoritesProvider favorites) {
    final isFavorite = favorites.isFavorite(id, type);
    IconData data = Icons.favorite_border;

    if (isFavorite) {
      data = Icons.favorite;
    }

    return Icon(data);
  }
}
