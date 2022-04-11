import 'dart:convert';

import '../models/index.dart';
import 'assets_loader.dart';

class MockDataService {
  static Future<DatasetHomepage> fetchHomepageDataset() async {
    final source = await AssetsLoaderService.loadHomepageJsonFile();
    final json = jsonDecode(source);

    return DatasetHomepage.fromJson(json);
  }

  // TODO: Get data from drawer.json

  static Future<DatasetSource> fetchSource() async {
    final source = await AssetsLoaderService.loadSourceJsonFile();
    final json = jsonDecode(source);

    return DatasetSource.fromJson(json);
  }
}
