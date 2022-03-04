import 'package:flutter/material.dart';

mixin StartScrollControllerMixin {
  final scrollController = ScrollController();

  void scrollToStartOfList() {
    if (shouldGoToStartPosition) {
      scrollController.animateTo(
        scrollController.position.minScrollExtent,
        curve: Curves.ease,
        duration: const Duration(seconds: 1),
      );
    }
  }

  bool get shouldGoToStartPosition {
    final hasChild = scrollController.hasClients;
    final notAtStartPosition = scrollController.position.pixels !=
        scrollController.position.minScrollExtent;

    return hasChild && notAtStartPosition;
  }
}
