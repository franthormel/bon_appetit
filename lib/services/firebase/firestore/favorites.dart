/// Used as the data payload between the [FirestoreService] and the [FirestoreProvider].
class FirestoreFavorites {
  final List<String> articles;
  final List<String> recipes;
  final List<String> videos;

  const FirestoreFavorites({
    required this.articles,
    required this.recipes,
    required this.videos,
  });

  Map<String, List<String>> toMap() {
    return <String, List<String>>{
      "articles": articles,
      "recipes": recipes,
      "videos": videos,
    };
  }
}
