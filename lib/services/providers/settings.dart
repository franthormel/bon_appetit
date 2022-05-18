import 'package:flutter/material.dart';

import '../firebase/analytics.dart';
import '../shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  static const _kAnalyticsCollectionEnabled =
      "FIREBASE_ANALYTICS_COLLECTION_ENABLED";
  static const _kAdStorageConsentGranted =
      "GOOGLE_ANALYTICS_DEFAULT_ALLOW_AD_STORAGE";
  static const _kAnalyticsStorageConsentGranted =
      "GOOGLE_ANALYTICS_DEFAULT_ALLOW_ANALYTICS_STORAGE";

  // Controls the collection and use of Analytics data.
  // Read more: https://firebase.google.com/docs/analytics/configure-data-collection
  bool? _analyticsCollectionEnabled;

  // User's consent status.
  // Read more: https://developers.google.com/tag-platform/devguides/app-consent
  bool? _adStorageConsentGranted;
  bool? _analyticsStorageConsentGranted;

  late final SharedPreferencesService _sharedPreferencesService;

  SettingsProvider() {
    _sharedPreferencesService = SharedPreferencesService();
    _initialize();
  }

  Future<void> _initialize() async {
    // 1. Analytics collection
    _analyticsCollectionEnabled = await _sharedPreferencesService.getBool(
      _kAnalyticsCollectionEnabled,
    );

    // 2. Ad storage
    _adStorageConsentGranted = await _sharedPreferencesService.getBool(
      _kAdStorageConsentGranted,
    );

    // 3. Analytics storage
    _analyticsStorageConsentGranted = await _sharedPreferencesService.getBool(
      _kAnalyticsStorageConsentGranted,
    );
  }

  /// Defaults to [true].
  bool get analyticsCollectionEnabled => _analyticsCollectionEnabled ?? true;

  /// Defaults to [true].
  bool get adStorageConsentGranted => _adStorageConsentGranted ?? true;

  /// Defaults to [true].
  bool get analyticsStorageConsentGranted =>
      _analyticsStorageConsentGranted ?? true;

  void toggleAnalyticsCollectionEnabled() {
    _toggleAnalyticsCollectionEnabled();
  }

  void toggleAdStorageConsentGranted() {
    _toggleAdStorageConsentGranted();
  }

  void toggleAnalyticsStorageConsentGranted() {
    _toggleAnalyticsStorageConsentGranted();
  }

  Future<void> _toggleAnalyticsCollectionEnabled() async {
    final value = !analyticsCollectionEnabled;

    // Change preferences.
    await _sharedPreferencesService.setBool(
      _kAnalyticsCollectionEnabled,
      value,
    );

    // Analytics collection
    await FirebaseAnalyticsService.setAnalyticsCollectionEnabled(value);
  }

  Future<void> _toggleAdStorageConsentGranted() async {
    final value = !adStorageConsentGranted;

    // Change preferences.
    await _sharedPreferencesService.setBool(
      _kAdStorageConsentGranted,
      value,
    );

    // Analytics consent
    await FirebaseAnalyticsService.setConsent(
      adStorageConsentGranted: value,
      analyticsStorageConsentGranted: analyticsStorageConsentGranted,
    );
  }

  Future<void> _toggleAnalyticsStorageConsentGranted() async {
    final value = !analyticsStorageConsentGranted;

    // Change preferences.
    await _sharedPreferencesService.setBool(
      _kAnalyticsStorageConsentGranted,
      value,
    );

    // Analytics consent
    await FirebaseAnalyticsService.setConsent(
      adStorageConsentGranted: adStorageConsentGranted,
      analyticsStorageConsentGranted: value,
    );
  }
}
