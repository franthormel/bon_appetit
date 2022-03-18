import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/index.dart';

class MockDataService {
  // Used by HomePage widget
  static Future<DatasetHomepage> fetchHomepageDataset() async {
    final jsonString = await rootBundle.loadString('assets/data/homepage.json');
    final json = jsonDecode(jsonString);

    return DatasetHomepage.fromJson(json);
  }
}
