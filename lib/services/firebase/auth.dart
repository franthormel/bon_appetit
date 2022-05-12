import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import '../../firebase_options.dart';
import 'platform.dart';

class FirebaseAuthService {
  static bool get isAuthenticated => FirebaseAuth.instance.currentUser != null;

  /// Returns true if the email is available for sign-in. Throws a [FirebaseAuthException] if the email is invalid.
  static Future<bool> checkEmail(String email) async {
    final methods = await FirebaseAuth.instance.fetchSignInMethodsForEmail(
      email,
    );

    return methods.isNotEmpty;
  }

  static Future<UserCredential> createUser({
    required String email,
    required String password,
  }) async {
    return await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

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

  static Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  static Future<void> signOut() async => await FirebaseAuth.instance.signOut();

  static Stream<User?> userChanges() => FirebaseAuth.instance.userChanges();
}
