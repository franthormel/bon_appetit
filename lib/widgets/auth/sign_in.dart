import 'package:flutter/material.dart';

class AuthSignInWidget extends StatelessWidget {
  const AuthSignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Email"),
        const TextField(),
        TextButton(
          child: const Text("NEXT"),
          onPressed: (){},
        ),
      ],
    );
  }
}
