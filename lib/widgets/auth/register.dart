import 'package:flutter/material.dart';

import '../../style/index.dart';
import 'button.dart';
import 'label.dart';
import 'provider_button/google.dart';
import 'separator_text.dart';

class AuthRegisterWidget extends StatefulWidget {
  final String email;

  const AuthRegisterWidget({
    required this.email,
    Key? key,
  }) : super(key: key);

  @override
  State<AuthRegisterWidget> createState() => _AuthRegisterWidgetState();
}

class _AuthRegisterWidgetState extends State<AuthRegisterWidget> {
  final passwordController = TextEditingController();
  bool obscureText = true;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController(text: widget.email);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthLabelWidget(text: "Email"),
        const SizedBox(height: 16.0),
        TextField(
          controller: emailController,
          readOnly: true,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 16.0),
        const AuthLabelWidget(text: "Password"),
        const SizedBox(height: 16.0),
        TextField(
          controller: passwordController,
          cursorColor: BonAppetitColors.black,
          decoration: InputDecoration(
            errorText: errorText,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: "Enter your password",
            suffixIcon: IconButton(
              icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(
                  () {
                    obscureText = !obscureText;
                  },
                );
              },
            ),
          ),
          onSubmitted: (password) {
            // TODO: Validate password (must be at least 6 chars)
            // TODO: Create account if password is valid
          },
          obscureText: obscureText,
          textInputAction: TextInputAction.done,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 16.0),
        AuthButtonWidget(
          text: "SIGN UP",
          onPressed: () {
            // TODO: Validate password (must be at least 6 chars)
            // TODO: Create account if password is valid
          },
        ),
        const SizedBox(height: 16.0),
        const AuthSeparatorTextWidget(),
        const SizedBox(height: 16.0),
        const AuthGoogleProviderButtonWidget(),
      ],
    );
  }
}
