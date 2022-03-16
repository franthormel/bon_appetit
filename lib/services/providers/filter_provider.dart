import 'package:flutter/material.dart';

import 'scroll_controller_mixin.dart';

class FilterProvider extends ChangeNotifier with ScrollControllerMixin {
  String _option = "All";

  void change(String option) {
    if (option.isNotEmpty && _option != option) {
      _option = option;
      scrollToStartOfList();
      notifyListeners();
    }
  }

  bool get shouldFilter => _option != "All";

  bool optionIs(String option) => _option == option;

  bool optionIsIn(List<String> categories) => categories.contains(_option);
}
