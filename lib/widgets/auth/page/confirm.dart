import 'package:flutter/material.dart';

class AuthPageConfirmWidget extends StatefulWidget {
  final String email;

  const AuthPageConfirmWidget(this.email, {Key? key}) : super(key: key);

  @override
  State<AuthPageConfirmWidget> createState() => _AuthPageConfirmWidgetState();
}

class _AuthPageConfirmWidgetState extends State<AuthPageConfirmWidget> {
  bool checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
