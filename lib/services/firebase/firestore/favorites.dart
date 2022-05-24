import 'package:cloud_firestore/cloud_firestore.dart';

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

  factory FirestoreFavorites.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();

    return FirestoreFavorites(
      articles: _toStringList(data?["articles"]),
      recipes: _toStringList(data?["recipes"]),
      videos: _toStringList(data?["videos"]),
    );
  }

  Map<String, List<String>> toFirestore() {
    return <String, List<String>>{
      "articles": articles,
      "recipes": recipes,
      "videos": videos,
    };
  }

  static List<String> _toStringList(dynamic data) {
    if (data is Iterable) {
      return List.from(data);
    }

    return <String>[];
  }
}
