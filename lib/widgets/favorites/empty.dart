import 'package:flutter/material.dart';

class FavoritesEmptyWidget extends StatelessWidget {
  /// Used in the [Text] widget. Must be in plural form for the text to be grammatically correct.
  final String? text;

  const FavoritesEmptyWidget({this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(_text));
  }

  String get _text {
    if (text != null || text!.isNotEmpty) {
      return "No favorite $text";
    }

    return "No favorites";
  }
}
