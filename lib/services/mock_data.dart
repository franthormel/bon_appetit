import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/recipe_dataset.dart';

class MockDataService {
  static const _assetFile = 'assets/data/1644364800.json';

  static Future<RecipeDataset> get recipeDataset async {
    final jsonString = await rootBundle.loadString(_assetFile);
    final json = jsonDecode(jsonString);

    return RecipeDataset.fromJson(json);
  }
}
