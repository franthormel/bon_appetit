import 'package:flutter/material.dart';

import 'filter_options.dart';

class AppState extends ChangeNotifier {
  final filterSuggestedRecipes = FilterRecipeOption();
  final filterTrendingRecipes = FilterRecipeOption();
}
