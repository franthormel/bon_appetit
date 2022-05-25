import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import '../../firebase_options.dart';
import 'auth.dart';
import 'firestore/firestore.dart';

class FirebaseService {
  static Future<void> initialize() async {
    if (platformIsSupported) {
      final options = DefaultFirebaseOptions.currentPlatform;

      await Firebase.initializeApp(options: options);
    }

    // Emulators
    if (kDebugMode) {
      await FirebaseAuthService.useEmulator();
      await FirestoreService.useEmulator();
    }
  }

  static bool get platformIsSupported {
    final unsupportedPlatforms = [TargetPlatform.windows, TargetPlatform.macOS];
    return !kIsWeb && !unsupportedPlatforms.contains(defaultTargetPlatform);
  }
}
