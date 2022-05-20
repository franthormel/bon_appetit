import 'package:flutter/services.dart';

class AssetsLoaderService {
  static Future<String> loadSponsorTxtFile() =>
      _loadFileAsString("assets/data/sponsor.txt");

  static Future<String> loadSourceJsonFile() =>
      _loadFileAsString("assets/data/source.json");

  static Future<String> loadHomepageJsonFile() =>
      _loadFileAsString("assets/data/homepage.json");

  static Future<String> loadDrawerJsonFile() =>
      _loadFileAsString("assets/data/drawer.json");

  static Future<String> _loadFileAsString(String file) async {
    String result = "Could not load $file";

    try {
      result = await rootBundle.loadString(file);
    } on Exception catch (e) {
      result = e.toString();
    }

    return result;
  }
}
