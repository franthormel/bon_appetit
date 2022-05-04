import 'package:flutter/material.dart';

import '../others/black_text_button.dart';
import 'label.dart';

class AuthSignInWidget extends StatelessWidget {
  const AuthSignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthLabelWidget(text: "Email"),
        const SizedBox(height: 16.0),
        const TextField(
          decoration: InputDecoration(
            labelText: "Your email address",
            border: OutlineInputBorder(borderRadius: BorderRadius.zero),
          ),
        ),
        const SizedBox(height: 16.0),
        BlackTextButtonWidget(
          text: "NEXT",
          onPressed: () {},
          height: 50.0,
          width: double.infinity,
        ),
      ],
    );
  }
}
