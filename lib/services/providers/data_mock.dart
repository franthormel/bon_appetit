import 'dart:convert';

import 'package:flutter/services.dart';

import '../../models/index.dart';

class MockDataProvider {
  // Used by HomePage widget
  static Future<HomepageDataset> fetchHomepageDataset() async {
    final jsonString = await rootBundle.loadString('assets/data/homepage.json');
    final json = jsonDecode(jsonString);

    return HomepageDataset.fromJson(json);
  }
}
