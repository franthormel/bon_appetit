import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import '../../../services/index.dart';
import '../../../style/index.dart';
import '../button/button.dart';
import '../label.dart';

class AuthEmailPageWidget extends StatefulWidget {
  const AuthEmailPageWidget({Key? key}) : super(key: key);

  @override
  State<AuthEmailPageWidget> createState() => _AuthEmailPageWidgetState();
}

class _AuthEmailPageWidgetState extends State<AuthEmailPageWidget> {
  String? errorText;
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthLabelWidget(text: "Email"),
        const SizedBox(height: 16.0),
        TextField(
          controller: textController,
          cursorColor: BonAppetitColors.black,
          decoration: InputDecoration(
            errorText: errorText,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: "Your email address",
          ),
          onSubmitted: (email) {
            _validateEmail(email);
          },
          style: Theme.of(context).textTheme.bodyText2,
          textInputAction: TextInputAction.done,
        ),
        const SizedBox(height: 16.0),
        AuthButtonWidget(
          text: "NEXT",
          onPressed: () {
            _validateEmail(textController.text);
          },
        ),
      ],
    );
  }

  /// Validates the email and its sign in options and push the page according to the return value.
  /// If any exception is caught, display an error on the [TextField.errorText].
  Future<void> _validateEmail(String email) async {
    final value = await _checkSignIn(email);
    _changeErrorText(value);
  }

  void _changeErrorText(String? value) {
    if (errorText != value) {
      setState(() {
        errorText = value;
      });
    }
  }

  /// Check if the email can be used for signing in, any Exception will return an "Invalid email" value.
  Future<String?> _checkSignIn(String email) async {
    String? value;

    try {
      final haveAccount = await FirebaseAuthService.checkSignInEmail(email);
      _pushRoute(haveAccount);
    } catch (e) {
      return "Invalid email";
    }

    return value;
  }

  /// Display the login page if [value] param is true otherwise show the register page.
  void _pushRoute(bool value) {
    final router = Provider.of<RouteProvider>(context, listen: false);
    PageRouteInfo page = AuthRegisterRoute(email: textController.text);

    if (value) {
      page = AuthLoginRoute(email: textController.text);
    }

    router.push(page);
  }
}
