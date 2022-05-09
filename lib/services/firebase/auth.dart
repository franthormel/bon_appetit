import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import '../../firebase_options.dart';
import 'platform.dart';

class FirebaseAuthService {
  static bool get isAuthenticated => FirebaseAuth.instance.currentUser != null;

  static Stream<User?> userChanges() => FirebaseAuth.instance.userChanges();

  static Future<void> signOut() async => await FirebaseAuth.instance.signOut();

  static Future<void> initializeFirebase() async {
    if (FirebasePlatformService.isSupported) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      if (kDebugMode) {
        await FirebaseAuth.instance.useAuthEmulator("localhost", 9099);
      }
    }
  }

  /// Returns true if the email is available for sign-in. Throws a [FirebaseAuthException] if the email is invalid.
  static Future<bool> checkSignInEmail(String email) async {
    final methods = await FirebaseAuth.instance.fetchSignInMethodsForEmail(
      email,
    );

    return methods.isNotEmpty;
  }
}
