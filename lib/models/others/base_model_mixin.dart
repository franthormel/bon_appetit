import 'package:flutter/material.dart';

mixin BaseModelsMixin {
  String get heroTag => ObjectKey(this).toString();

  int compareDateTo(DateTime other);
}
