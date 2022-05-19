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
  // Read more (developers): https://firebase.google.com/docs/analytics/configure-data-collection
  // Read more (support): https://support.google.com/firebase/answer/6318039
  bool _analyticsCollectionEnabled = true;

  // User's consent status.
  // Read more (developers): https://developers.google.com/tag-platform/devguides/app-consent
  // Read more (support): https://support.google.com/analytics/answer/9976101
  bool _adStorageConsentGranted = true;
  bool _analyticsStorageConsentGranted = true;

  late final SharedPreferencesService _sharedPreferencesService;

  SettingsProvider() {
    _sharedPreferencesService = const SharedPreferencesService();
    _initialize();
  }

  Future<void> _initialize() async {
    _analyticsCollectionEnabled = await _sharedPreferencesService.getBool(
          _kAnalyticsCollectionEnabled,
        ) ??
        true;

    _adStorageConsentGranted = await _sharedPreferencesService.getBool(
          _kAdStorageConsentGranted,
        ) ??
        true;

    _analyticsStorageConsentGranted = await _sharedPreferencesService.getBool(
          _kAnalyticsStorageConsentGranted,
        ) ??
        true;
  }

  bool get analyticsCollectionEnabled => _analyticsCollectionEnabled;

  bool get adStorageConsentGranted => _adStorageConsentGranted;

  bool get analyticsStorageConsentGranted => _analyticsStorageConsentGranted;

  void toggleAnalyticsCollectionEnabled() {
    _toggleAnalyticsCollectionEnabled();
  }

  void toggleAdStorageConsentGranted() {
    _toggleAdStorageConsentGranted();
  }

  void toggleAnalyticsStorageConsentGranted() {
    _toggleAnalyticsStorageConsentGranted();
  }

  Future<void> _changeConsentValues() async {
    // Analytics consent
    await FirebaseAnalyticsService.setConsent(
      adStorageConsentGranted: _adStorageConsentGranted,
      analyticsStorageConsentGranted: _analyticsStorageConsentGranted,
    );
  }

  Future<void> _toggleAnalyticsCollectionEnabled() async {
    _analyticsCollectionEnabled = !_analyticsCollectionEnabled;

    // Change preferences.
    await _sharedPreferencesService.setBool(
      _kAnalyticsCollectionEnabled,
      _analyticsCollectionEnabled,
    );

    // Analytics collection
    await FirebaseAnalyticsService.setAnalyticsCollectionEnabled(
      _analyticsCollectionEnabled,
    );

    notifyListeners();
  }

  Future<void> _toggleAdStorageConsentGranted() async {
    _adStorageConsentGranted = !_adStorageConsentGranted;

    // Change preferences.
    await _sharedPreferencesService.setBool(
      _kAdStorageConsentGranted,
      _adStorageConsentGranted,
    );

    await _changeConsentValues();

    notifyListeners();
  }

  Future<void> _toggleAnalyticsStorageConsentGranted() async {
    _analyticsStorageConsentGranted = !_analyticsStorageConsentGranted;

    // Change preferences.
    await _sharedPreferencesService.setBool(
      _kAnalyticsStorageConsentGranted,
      _analyticsStorageConsentGranted,
    );

    await _changeConsentValues();

    notifyListeners();
  }
}
