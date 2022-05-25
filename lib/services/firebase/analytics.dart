import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

import '../../models/index.dart';

class FirebaseAnalyticsService {
  static FirebaseAnalytics get _instance => FirebaseAnalytics.instance;

  static Future<void> logFavoriteAdd(String id, ContentType type) async {
    final parameters = {'id': id, 'content_type': type.toLiteralValue()};

    await _logCustomEvent('favorite_add', parameters);
    await _logFavoriteItem(parameters);
  }

  static Future<void> logFavoriteRemove(String id, ContentType type) async {
    final parameters = {'id': id, 'content_type': type.toLiteralValue()};

    await _logCustomEvent('favorite_remove', parameters);
    await _logFavoriteItem(parameters);
  }

  static Future<void> logLoginViaGoogle() async {
    await _logLogin('Google OAuth');
  }

  static Future<void> logLoginViaSignIn() async {
    await _logLogin('Password');
  }

  static Future<void> logSearch(String value) async {
    await _instance.logSearch(searchTerm: value);
  }

  static Future<void> logSelectedArticle(Article article) async {
    await _logSelectContent('Article', article.id);
  }

  static Future<void> logSelectedRecipe(Recipe recipe) async {
    await _logSelectContent('Recipe', recipe.id);
  }

  static Future<void> logSelectedVideo(Video video) async {
    await _logSelectContent('Video', video.id);
  }

  static Future<void> logSignUp() async {
    await _logSignUp('Sign up');
  }

  static Future<void> logSignUpViaGoogle() async {
    await _logSignUp('Google OAuth');
  }

  static Future<void> trackScreen(PageRouteInfo route) async {
    await _logCustomEvent(
      'screen_view',
      {'screen_name': route.routeName},
    );
  }

  static Future<void> setAnalyticsCollectionEnabled(bool value) async {
    await _instance.setAnalyticsCollectionEnabled(value);
  }

  static Future<void> setConsent({
    required bool? adStorageConsentGranted,
    required bool? analyticsStorageConsentGranted,
  }) async {
    await _instance.setConsent(
      adStorageConsentGranted: adStorageConsentGranted,
      analyticsStorageConsentGranted: analyticsStorageConsentGranted,
    );
  }

  static Future<void> setUserId(String? id) async {
    await _instance.setUserId(id: id);
  }

  static Future<void> _logCustomEvent(
    String name, [
    Map<String, dynamic>? parameters,
  ]) async {
    await _instance.logEvent(name: name, parameters: parameters);
  }

  static Future<void> _logFavoriteItem(Map<String, String> parameters) async {
    await _logCustomEvent('favorite_item', parameters);
  }

  static Future<void> _logSignUp(String value) async {
    await _instance.logSignUp(signUpMethod: value);
  }

  static Future<void> _logLogin(String value) async {
    await _instance.logLogin(loginMethod: value);
  }

  static Future<void> _logSelectContent(String type, String id) async {
    await _instance.logSelectContent(
      contentType: type,
      itemId: id,
    );
  }
}
