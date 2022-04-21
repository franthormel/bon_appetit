enum SearchCategory { allContent, recipes, articles, videos }

// TODO: Newest --- Articles, Videos
enum SearchSortBy { relevance, newest, highestRated, mostReviewed }

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

extension SearchSortByStringer on SearchSortBy {
  String toLiteralValue() {
    String value = "None";

    switch (this) {
      case SearchSortBy.relevance:
        value = "Relevance";
        break;
      case SearchSortBy.newest:
        value = "Newest";
        break;
      case SearchSortBy.highestRated:
        value = "Highest Rated";
        break;
      case SearchSortBy.mostReviewed:
        value = "Most Reviewed";
        break;
    }

    return value;
  }
}
