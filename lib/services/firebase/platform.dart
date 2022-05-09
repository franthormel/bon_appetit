import 'package:flutter/foundation.dart';

class FirebasePlatformService {
  static bool get isSupported {
    final unsupportedPlatforms = [TargetPlatform.windows, TargetPlatform.macOS];
    return !kIsWeb && !unsupportedPlatforms.contains(defaultTargetPlatform);
  }
}
