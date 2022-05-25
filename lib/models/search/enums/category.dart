enum SearchCategory { allContent, recipes, articles, videos }

extension SearchCategoryStringer on SearchCategory {
  static const _kDefinitions = <SearchCategory, String>{
    SearchCategory.allContent: "All Content",
    SearchCategory.recipes: "Recipes",
    SearchCategory.articles: "Articles",
    SearchCategory.videos: "Videos",
  };

  String toLiteralValue() => _kDefinitions[this] ?? "None";
}
