import 'package:flutter/material.dart';

import '../start_scroll_controller_mixin.dart';

class RecipeFilter extends ChangeNotifier with StartScrollControllerMixin {
  String _recipeOption = "All";

  void changeRecipeOptionTo(String option) {
    if (option.isNotEmpty && _recipeOption != option) {
      _recipeOption = option;
      scrollToStartOfList();
      notifyListeners();
    }
  }

  bool get shouldFilter => _recipeOption != "All";

  bool recipeOptionIs(String option) => _recipeOption == option;

  bool recipeOptionIsIn(List<String> categories) =>
      categories.contains(_recipeOption);
}
