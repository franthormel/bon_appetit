import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import '../../../services/index.dart';
import '../../../style/index.dart';
import '../button/button.dart';
import '../label.dart';

class AuthPageEmailWidget extends StatefulWidget {
  const AuthPageEmailWidget({Key? key}) : super(key: key);

  @override
  State<AuthPageEmailWidget> createState() => _AuthPageEmailWidgetState();
}

class _AuthPageEmailWidgetState extends State<AuthPageEmailWidget> {
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
    _changeErrorText(
      email.isNotEmpty ? await _checkSignIn(email) : "Required",
    );
  }

  void _changeErrorText(String? value) {
    if (errorText != value) {
      setState(() {
        errorText = value;
      });
    }
  }

  Future<String?> _checkSignIn(String email) async {
    String? value;

    try {
      _pushRoute(await FirebaseAuthService.checkSignInEmail(email));
    } catch (e) {
      value = "Invalid email";
    }

    return value;
  }

  void _pushRoute(bool value) {
    PageRouteInfo page = AuthRegisterRoute(email: textController.text);
    final router = Provider.of<RouteProvider>(context, listen: false);

    if (value) {
      page = AuthLoginRoute(email: textController.text);
    }

    router.push(page);
  }
}
