import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/index.dart';

class MockDataService with ChangeNotifier {
  static Future<RecipeDataset> fetchRecipeDataset() async {
    final jsonString = await rootBundle.loadString('assets/data/recipes.json');
    final json = jsonDecode(jsonString);

    return RecipeDataset.fromJson(json);
  }
}
