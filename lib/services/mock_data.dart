import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/index.dart';

class MockDataService {
  static Future<RecipeDataset> fetchRecipeDataset() async {
    final jsonString = await rootBundle.loadString('assets/data/recipes.json');
    final json = jsonDecode(jsonString);

    return RecipeDataset.fromJson(json);
  }
}
