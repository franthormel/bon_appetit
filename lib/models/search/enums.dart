enum SearchShow {
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

extension SearchShowTypeStringer on SearchShow {
  String toLiteralValue() {
    if (this == SearchShow.allContent) {
      return "All Content";
    }

    return toString().split('.').last;
  }
}

extension SearchSortByTypeStringer on SearchSortBy {
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
