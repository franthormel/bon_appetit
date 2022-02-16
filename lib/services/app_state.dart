import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  String _optionWhatToCook = "All";

  void changeOptionWhatToCook(String option) {
    // Changes the value only when it is not empty and not the same value to be changed
    if (option.isNotEmpty && _optionWhatToCook != option) {
      _optionWhatToCook = option;
      notifyListeners();
    }
  }

  /// Use this method in checking whether to filter
  /// or not filter the "What to cook" recipes.
  bool get canFilterWhatToCook => _optionWhatToCook != "All";

  bool optionIsWhatToCook(String option) => _optionWhatToCook == option;

  bool optionsAreWhatToCook(List<String> options) =>
      options.contains(_optionWhatToCook);
}
