import 'package:flutter/material.dart';

import '../label.dart';

class AuthEmailWidget extends StatelessWidget {
  final TextEditingController emailController;
  final InputDecoration? inputDecoration;

  const AuthEmailWidget({
    required this.emailController,
    this.inputDecoration,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthLabelWidget(text: "Email"),
        const SizedBox(height: 16.0),
        TextField(
          controller: emailController,
          readOnly: true,
          decoration: inputDecoration ?? const InputDecoration(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
