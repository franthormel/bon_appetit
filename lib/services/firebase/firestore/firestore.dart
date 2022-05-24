import 'package:cloud_firestore/cloud_firestore.dart';

import '../auth.dart';
import 'constants.dart';
import 'favorites.dart';

class FirestoreService {
  static FirebaseFirestore get _instance => FirebaseFirestore.instance;

  static Future<FirestoreFavorites?> readFavorites() async {
    if (FirebaseAuthService.isAuthenticated) {
      final path = FirebaseAuthService.uid;
      final document = await _userFavoritesCollection
          .doc(path)
          .withConverter(
              fromFirestore: FirestoreFavorites.fromFirestore,
              toFirestore: (FirestoreFavorites favorites, SetOptions? options) {
                return favorites.toFirestore();
              })
          .get();

      if (document.exists) {
        return document.data();
      }
    }

    return null;
  }

  // TODO: Delete favorites by type or collectively.

  static Future<void> writeFavorites(FirestoreFavorites favorites) async {
    if (FirebaseAuthService.isAuthenticated) {
      final data = favorites.toFirestore();
      final path = FirebaseAuthService.uid;

      await _userFavoritesCollection.doc(path).set(data);
    }
  }

  static CollectionReference get _userFavoritesCollection {
    // TODO: Place withConverter() method here
    return _instance.collection(FirestoreCollection.userFavorites);
  }

  static Future<void> useEmulator() async {
    _instance.useFirestoreEmulator("localhost", 8080);
  }
}
