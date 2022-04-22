enum SearchCategory { allContent, recipes, articles, videos }

enum SearchSort { relevance, newest, highestRated, mostReviewed }

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

extension SearchSortStringer on SearchSort {
  String toLiteralValue() {
    String value = "None";

    switch (this) {
      case SearchSort.relevance:
        value = "Relevance";
        break;
      case SearchSort.newest:
        value = "Newest";
        break;
      case SearchSort.highestRated:
        value = "Highest Rated";
        break;
      case SearchSort.mostReviewed:
        value = "Most Reviewed";
        break;
    }

    return value;
  }
}
