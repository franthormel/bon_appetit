import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import '../../../style/index.dart';
import '../../others/cached_hero_image.dart';

class SearchPageListItemWidget extends StatelessWidget {
  final String category;
  final bool hasOverlayPlayButton;
  final String heroTag;
  final String imageUrl;
  final PageRouteInfo route;
  final String title;

  const SearchPageListItemWidget({
    required this.category,
    required this.imageUrl,
    required this.heroTag,
    required this.route,
    required this.title,
    this.hasOverlayPlayButton = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Use hasOverlayPlayButton property and overlay on image
    return Material(
      color: BonAppetitColors.white,
      elevation: 1.0,
      borderRadius: BorderRadius.circular(1.0),
      child: InkWell(
        onTap: () {
          Provider.of<RouteProvider>(context, listen: false).push(route);
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: CachedHeroImageWidget(
                  heroTag: heroTag,
                  imageUrl: imageUrl,
                ),
              ),
              const SizedBox(width: 5.0),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      title,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
