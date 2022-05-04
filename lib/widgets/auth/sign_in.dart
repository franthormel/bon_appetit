import 'package:flutter/material.dart';

import 'label.dart';
import 'button.dart';

class AuthSignInWidget extends StatelessWidget {
  const AuthSignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthLabelWidget(text: "Email"),
        const TextField(),
        AuthButtonWidget(
          text: "NEXT",
          onPressed: (){},
        ),
      ],
    );
  }
}
