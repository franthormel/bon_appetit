import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../auth.dart';
import 'constants.dart';
import 'favorites.dart';
import '../platform.dart';

class FirestoreService {
  static FirebaseFirestore get _instance => FirebaseFirestore.instance;

  static Future<void> saveFavorites(FirestoreFavorites favorites) async {
    if (FirebaseAuthService.isAuthenticated) {
      const collection = FirestoreCollection.userFavorites;
      final data = favorites.toMap();
      final path = FirebaseAuthService.uid;

      await _instance.collection(collection).doc(path).set(data);
    }
  }

  static Future<void> useEmulator() async {
    if (kDebugMode && FirebasePlatformService.isSupported) {
      _instance.useFirestoreEmulator("localhost", 8080);
    }
  }
}
