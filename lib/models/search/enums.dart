enum SearchCategory {
  allContent,
  recipes,
  articles,
  videos,
}

enum SearchSortBy {
  relevance,
  newest,
  highestRated,
  mostReviewed,
}

extension SearchCategoryStringer on SearchCategory {
  String toLiteralValue() {
    if (this == SearchCategory.allContent) {
      return "All Content";
    }

    return toString().split('.').last;
  }
}

extension SearchSortByStringer on SearchSortBy {
  String toLiteralValue() {
    if (this == SearchSortBy.highestRated) {
      return "Highest Rated";
    }

    if (this == SearchSortBy.mostReviewed) {
      return "Most Reviewed";
    }

    return toString().split('.').last;
  }
}
