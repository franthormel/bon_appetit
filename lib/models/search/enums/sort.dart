enum SearchSort { relevance, newest, highestRated, mostReviewed }

extension SearchSortStringer on SearchSort {
  static const _kDefinitions = <SearchSort, String>{
    SearchSort.relevance: "Relevance",
    SearchSort.newest: "Newest",
    SearchSort.highestRated: "Highest Rated",
    SearchSort.mostReviewed: "Most Reviewed",
  };

  String toLiteralValue() => _kDefinitions[this] ?? "None";
}
