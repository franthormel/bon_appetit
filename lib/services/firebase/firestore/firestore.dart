import 'package:cloud_firestore/cloud_firestore.dart';

import '../auth.dart';
import 'constants.dart';
import 'favorites.dart';

class FirestoreService {
  static FirebaseFirestore get _instance => FirebaseFirestore.instance;

  // TODO: Read favorites

  // TODO: Delete favorites by type or collectively.

  static Future<void> saveFavorites(FirestoreFavorites favorites) async {
    if (FirebaseAuthService.isAuthenticated) {
      const collection = FirestoreCollection.userFavorites;
      final data = favorites.toMap();
      final path = FirebaseAuthService.uid;

      await _instance.collection(collection).doc(path).set(data);
    }
  }

  static Future<void> useEmulator() async {
    _instance.useFirestoreEmulator("localhost", 8080);
  }
}
