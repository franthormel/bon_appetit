import 'package:cloud_firestore/cloud_firestore.dart';

import '../auth.dart';
import 'constants.dart';
import 'favorites.dart';

class FirestoreService {
  static FirebaseFirestore get _instance => FirebaseFirestore.instance;

  static Future<FirestoreFavorites?> readFavorites() async {
    if (FirebaseAuthService.isAuthenticated) {
      final document = await _userFavoritesDoc.get();

      if (document.exists) {
        return document.data();
      }
    }

    return null;
  }

  static Future<void> useEmulator() async {
    _instance.useFirestoreEmulator("localhost", 8080);
  }

  static Future<void> writeFavorites(FirestoreFavorites favorites) async {
    if (FirebaseAuthService.isAuthenticated) {
      await _userFavoritesDoc.set(favorites);
    }
  }

  static DocumentReference<FirestoreFavorites> get _userFavoritesDoc {
    final path = FirebaseAuthService.uid;

    return _instance
        .collection(FirestoreCollection.userFavorites)
        .doc(path)
        .withConverter(
          fromFirestore: FirestoreFavorites.fromFirestore,
          toFirestore: (FirestoreFavorites favorites, SetOptions? options) {
            return favorites.toFirestore();
          },
        );
  }
}
