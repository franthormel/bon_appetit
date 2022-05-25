import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';

class AuthAccountPageFavoritesWidget extends StatelessWidget {
  const AuthAccountPageFavoritesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Provider.of<RouteProvider>(context, listen: false).push(
            const FavoritesRoute(),
          );
        },
        subtitle: const Text(
          "Favorite recipes, articles, and videos",
          overflow: TextOverflow.ellipsis,
        ),
        title: Text("Favorites", style: Theme.of(context).textTheme.headline6),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
