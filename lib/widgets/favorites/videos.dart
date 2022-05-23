import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../services/index.dart';
import '../others/list_item_entry/video.dart';
import 'empty.dart';
import 'list.dart';

class FavoriteVideosWidget extends StatelessWidget {
  const FavoriteVideosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final source = Provider.of<DatasetSource>(context, listen: false);
    final provider = Provider.of<FavoritesProvider>(context);
    final favorites = provider.filterFavoriteVideos(source.videos);

    if (favorites.isNotEmpty) {
      return FavoritesListWidget(
        children: favorites.map((video) {
          return ListItemEntryVideoWidget(video);
        }).toList(),
      );
    }

    return const FavoritesEmptyWidget(text: "videos");
  }
}
