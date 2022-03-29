import 'package:flutter/material.dart';

import '../models/index.dart';
import '../widgets/index.dart';

class ArticleDetailsPage extends StatelessWidget with DetailsContentsMixin {
  final Article article;

  const ArticleDetailsPage(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsContentsWidget(children: children);
  }

  @override
  List<Widget> get children {
    return [
      DetailsCategoryIssueWidget(article.category),
      DetailsTitleWidget(article.title),
      ArticleDetailsSubtitleWidget(article.subtitle),
      DetailsAuthorDateWidget(
        author: article.author,
        dateUploaded: article.dateUploaded,
      ),
      CachedHeroImageWidget(
        heroTag: article.heroTag,
        imageUrl: article.imageUrl,
      ),
      // TODO: Display sponsorText from file with a divider on top
      // TODO: Display content -- Use DetailsBodyTextWidget and delimiter is '/r/n'
      // TODO: Display products -- Similar to recipe's utensils but different title
      // TODO: Display tags -- Use DetailsCategoriesWidget but with a divider on top so modify this widget
    ];
  }
}
