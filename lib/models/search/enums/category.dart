enum SearchCategory { allContent, recipes, articles, videos }

extension SearchCategoryStringer on SearchCategory {
  String toLiteralValue() {
    String value = "None";

    switch (this) {
      case SearchCategory.allContent:
        value = "All Content";
        break;
      case SearchCategory.recipes:
        value = "Recipes";
        break;
      case SearchCategory.articles:
        value = "Articles";
        break;
      case SearchCategory.videos:
        value = "Videos";
        break;
    }

    return value;
  }
}
