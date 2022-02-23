import 'package:flutter/material.dart';

mixin ExteriorScrollControllerMixin {
  final scrollController = ScrollController();

  void scrollToStartOfList() {
    if (scrollController.hasClients) {
      scrollController.jumpTo(scrollController.position.minScrollExtent);
    }
  }
}
