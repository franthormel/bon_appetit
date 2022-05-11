import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/index.dart';
import '../../button/button.dart';
import '../../email_password/email.dart';

class AuthMagicLinkPageWidget extends StatelessWidget {
  final String email;

  const AuthMagicLinkPageWidget(this.email, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthEmailWidget(
          emailController: TextEditingController(text: email),
        ),
        const SizedBox(height: 16.0),
        AuthButtonWidget(
          onPressed: () {
            Provider.of<RouteProvider>(context, listen: false).push(
              AuthMagicLinkSendRoute(email: email),
            );
          },
          text: "NEXT",
        ),
      ],
    );
  }
}
