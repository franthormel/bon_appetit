enum ContentType { article, recipe, video }

extension ContentTypeString on ContentType {
  static const _kDefinitions = <ContentType, String>{
    ContentType.article: "article",
    ContentType.recipe: "recipe",
    ContentType.video: "video",
  };

  String toLiteralValue() => _kDefinitions[this] ?? "content";
}
