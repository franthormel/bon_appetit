import 'dart:convert';

import '../models/index.dart';
import 'assets_loader.dart';

class MockDataService {
  static Future<DatasetHomepage> fetchHomepageDataset() async {
    final jsonString = await AssetsLoaderService.loadHomepageJsonFile();
    final json = jsonDecode(jsonString);

    return DatasetHomepage.fromJson(json);
  }
}
