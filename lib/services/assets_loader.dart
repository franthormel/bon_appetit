import 'package:flutter/services.dart';

class AssetsLoaderService {
  static Future<String> loadSponsorTxtFile() =>
      _loadString("assets/data/sponsor.txt");

  static Future<String> loadSourceJsonFile() =>
      _loadString("assets/data/source.json");

  static Future<String> loadHomepageJsonFile() =>
      _loadString("assets/data/homepage.json");

  static Future<String> _loadString(String filename) async {
    String result = "Could not load $filename";

    try {
      result = await rootBundle.loadString(filename);
    } on Exception catch (e) {
      result = e.toString();
    }

    return result;
  }
}
