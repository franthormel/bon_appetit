import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  String _optionWhatToCook = "All";

  void changeOptionWhatToCook(String option) {
    if (option.isNotEmpty && _optionWhatToCook != option) {
      _optionWhatToCook = option;
      notifyListeners();
    }
  }

  bool optionIsWhatToCook(String option) => _optionWhatToCook == option;
}
