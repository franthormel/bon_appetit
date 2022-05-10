import 'package:flutter/material.dart';

import '../../button/button.dart';
import 'checkbox/checkbox.dart';
import 'utility_text.dart';

class AuthPageConfirmWidget extends StatelessWidget {
  final String email;

  const AuthPageConfirmWidget(this.email, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthPageConfirmCheckboxWidget(),
        const AuthPageConfirmUtilityTextWidget(),
        AuthButtonWidget(onPressed: () {}, text: "CREATE ACCOUNT"),
      ],
    );
  }
}
