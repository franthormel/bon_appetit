import 'package:bon_appetit/style/index.dart';
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
    final isFavorite = favorites.isFavorite(id, type);
    final icon = _chooseIcon(isFavorite);
    final color = _chooseColor(isFavorite);

    if (FirebaseAuthService.isAuthenticated) {
      return IconButton(
        color: color,
        icon: icon,
        onPressed: () {
          favorites.toggleFavorite(id, type);
        },
      );
    }

    return Container();
  }

  Icon _chooseIcon(bool isFavorite) {
    IconData data = Icons.favorite_border;

    if (isFavorite) {
      data = Icons.favorite;
    }

    return Icon(data);
  }

  Color? _chooseColor(bool isFavorite) {
    if (isFavorite) {
      return BonAppetitColors.sizzlingSunrise;
    }

    return null;
  }
}
