import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'analytics.dart';

class FirebaseAuthService {
  static bool get isAuthenticated => _instance.currentUser != null;

  static String? get uid => _instance.currentUser?.uid;

  static FirebaseAuth get _instance => FirebaseAuth.instance;

  /// Returns true if the email is available for sign-in. Throws a [FirebaseAuthException] if the email is invalid.
  static Future<bool> checkEmail(String email) async {
    final methods = await _instance.fetchSignInMethodsForEmail(email);
    return methods.isNotEmpty;
  }

  static Future<UserCredential> createUser({
    required String email,
    required String password,
  }) async {
    await FirebaseAnalyticsService.logSignUp();

    final credential = await _instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    _setAnalyticsUserId(credential: credential);

    return credential;
  }

  static Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    await FirebaseAnalyticsService.logLoginViaSignIn();

    final credential = await _instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    _setAnalyticsUserId(credential: credential);

    return credential;
  }

  static Future<UserCredential> signInWithGoogle() async {
    final googleCredential = await _fetchGoogleCredential();
    final credential = await _instance.signInWithCredential(
      googleCredential,
    );

    _setAnalyticsUserId(credential: credential);

    return credential;
  }

  static Future<void> signOut() async {
    _setAnalyticsUserId();
    await _instance.signOut();
  }

  static Future<void> useEmulator() async {
    await _instance.useAuthEmulator("localhost", 9099);
  }

  static Stream<User?> userChanges() => _instance.userChanges();

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

  static Future<void> _setAnalyticsUserId({UserCredential? credential}) async {
    await FirebaseAnalyticsService.setUserId(credential?.user?.uid);
  }
}
