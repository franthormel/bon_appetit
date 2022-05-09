import 'package:flutter/material.dart';

import '../../../others/underlined_text_button.dart';

class AuthPageRegisterEndWidget extends StatelessWidget {
  const AuthPageRegisterEndWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UnderlinedTextButtonWidget(
          onPressed: () {},
          text: "Sign in with a different account",
        ),
        UnderlinedTextButtonWidget(
          onPressed: () {},
          text: "Help me sign in",
        ),
      ],
    );
  }
}
