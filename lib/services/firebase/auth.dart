import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../firebase_options.dart';
import 'analytics.dart';
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
    await FirebaseAnalyticsService.logSignUp();

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
    await FirebaseAnalyticsService.logLoginViaSignIn();

    return await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  static Future<UserCredential> signInWithGoogle() async {
    final credential = await _fetchGoogleCredential();

    // Once signed in, return the UserCredential.
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  static Future<void> signOut() async => await FirebaseAuth.instance.signOut();

  static Stream<User?> userChanges() => FirebaseAuth.instance.userChanges();

  static Future<OAuthCredential> _fetchGoogleCredential() async {
    // Trigger the authentication flow
    final user = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final auth = await user?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: auth?.accessToken,
      idToken: auth?.idToken,
    );

    return credential;
  }
}
