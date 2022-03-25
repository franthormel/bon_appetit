import 'package:flutter/material.dart';

import 'scroll_controller.dart';

class FilterProvider extends ChangeNotifier with ScrollControllerMixin {
  String _option = "All";

  void change(String option) {
    if (option.isNotEmpty && _option != option) {
      _option = option;
      scrollToStartOfList();
      notifyListeners();
    }
  }

  bool optionIs(String option) => _option == option;

  bool optionIsIn(List<String> categories) => categories.contains(_option);

  bool get shouldFilter => _option != "All";
}
