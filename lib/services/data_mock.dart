import 'dart:convert';

import '../models/index.dart';
import 'assets_loader.dart';

class MockDataService {
  static Future<DatasetHomepageManager> fetchHomepageDataset() async {
    final source = await AssetsLoaderService.loadHomepageJsonFile();
    final json = jsonDecode(source);

    return DatasetHomepageManager.fromJson(json);
  }

  static Future<DatasetSource> fetchSource() async {
    final source = await AssetsLoaderService.loadSourceJsonFile();
    final json = jsonDecode(source);

    return DatasetSource.fromJson(json);
  }
}
