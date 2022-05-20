enum SearchSort { relevance, newest, highestRated, mostReviewed }

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
