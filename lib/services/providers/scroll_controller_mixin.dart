import 'package:flutter/material.dart';

mixin ScrollControllerMixin {
  final scrollController = ScrollController();

  void scrollToStartOfList() {
    if (_shouldGoToStartPosition) {
      scrollController.animateTo(
        scrollController.position.minScrollExtent,
        curve: Curves.ease,
        duration: const Duration(seconds: 1),
      );
    }
  }

  bool get _shouldGoToStartPosition {
    final hasClients = scrollController.hasClients;
    final notAtStartPosition = scrollController.position.pixels !=
        scrollController.position.minScrollExtent;

    return hasClients && notAtStartPosition;
  }
}
