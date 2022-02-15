import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  String _optionWhatToCook = "All";

  void changeOptionWhatToCook(String option) {
    if (option.isNotEmpty && _optionWhatToCook != option) {
      _optionWhatToCook = option;
      notifyListeners();
    }
  }

  /// Use this method in checking whether to filter
  /// or not filter the "What to cook" recipes.
  bool get filterWhatToCook => _optionWhatToCook != "All";

  bool optionIsWhatToCook(String option) => _optionWhatToCook == option;

  bool optionsIsWhatToCook(List<String> options) =>
      options.contains(_optionWhatToCook);
}
