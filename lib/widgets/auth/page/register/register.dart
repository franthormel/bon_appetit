import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/index.dart';
import '../../../../style/index.dart';
import '../../button/button.dart';
import '../../button/google.dart';
import '../../label.dart';
import '../../separator_text.dart';

class AuthPageRegisterWidget extends StatefulWidget {
  final String email;

  const AuthPageRegisterWidget({
    required this.email,
    Key? key,
  }) : super(key: key);

  @override
  State<AuthPageRegisterWidget> createState() => _AuthPageRegisterWidgetState();
}

class _AuthPageRegisterWidgetState extends State<AuthPageRegisterWidget> {
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
            suffixIcon: TextButton(
              child: const Text("Edit"),
              onPressed: () {
                Provider.of<RouteProvider>(context, listen: false).pop();
              },
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
            errorMaxLines: 3,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: "Enter your password",
            suffixIcon: TextButton(
              child: Text(obscureText ? "Show" : "Hide"),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ),
          ),
          onSubmitted: (password) {
            _validatePassword(password);
          },
          obscureText: obscureText,
          textInputAction: TextInputAction.done,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 16.0),
        AuthButtonWidget(
          text: "SIGN UP",
          onPressed: () {
            _validatePassword(passwordController.text);
          },
        ),
        const SizedBox(height: 16.0),
        const AuthSeparatorTextWidget(),
        const SizedBox(height: 16.0),
        const AuthGoogleProviderButtonWidget(),
      ],
    );
  }

  void _validatePassword(String password) {
    const minimumPasswordLength = 6;
    String? value;

    // If password is at least six (6) characters in length go to the next page ...
    if (password.length >= minimumPasswordLength) {
      // TODO: Implement confirmation page when registering
    } else {
      value = "Password should be at least $minimumPasswordLength characters.";
    }

    // ... otherwise show error text
    _changeErrorText(value);
  }

  void _changeErrorText(String? value) {
    if (errorText != value) {
      setState(() {
        errorText = value;
      });
    }
  }
}
