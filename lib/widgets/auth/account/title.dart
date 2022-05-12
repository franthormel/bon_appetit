import 'package:flutter/material.dart';

class AuthAccountPageTitleWidget extends StatelessWidget {
  const AuthAccountPageTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Text("My Account", style: Theme.of(context).textTheme.headline4),
    );
  }
}
