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
      if (article.products != null) const SponsorNotePaddedWidget(),
      ArticleDetailsContentsWidget(article.content),
      if (article.products != null)
        ArticleDetailsProductsWidget(article.products!),
      DetailsCategoriesWidget(article.tags, hasDivider: true),
    ];
  }
}
