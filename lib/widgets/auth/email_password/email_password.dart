import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import '../../../style/index.dart';
import '../button/button.dart';
import '../button/google.dart';
import '../label.dart';
import '../separator_text.dart';

class AuthEmailPasswordWidget extends StatefulWidget {
  final String email;
  final String? Function(RouteProvider, String) onPasswordSubmit;

  const AuthEmailPasswordWidget({
    required this.email,
    required this.onPasswordSubmit,
    Key? key,
  }) : super(key: key);

  @override
  State<AuthEmailPasswordWidget> createState() =>
      _AuthEmailPasswordWidgetState();
}

class _AuthEmailPasswordWidgetState extends State<AuthEmailPasswordWidget> {
  final passwordController = TextEditingController();
  bool obscureText = true;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController(text: widget.email);
    final router = Provider.of<RouteProvider>(context, listen: false);

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
              onPressed: router.pop,
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
            final value = widget.onPasswordSubmit(router, password);
            _changeErrorText(value);
          },
          obscureText: obscureText,
          textInputAction: TextInputAction.done,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 16.0),
        AuthButtonWidget(
          text: "SIGN UP",
          onPressed: () {
            final value = widget.onPasswordSubmit(
              router,
              passwordController.text,
            );

            _changeErrorText(value);
          },
        ),
        const SizedBox(height: 16.0),
        const AuthSeparatorTextWidget(),
        const SizedBox(height: 16.0),
        const AuthGoogleProviderButtonWidget(),
      ],
    );
  }

  void _changeErrorText(String? value) {
    if (errorText != value) {
      setState(() {
        errorText = value;
      });
    }
  }
}
