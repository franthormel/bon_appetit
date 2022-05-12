import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/index.dart';
import '../../../others/underlined_text_button.dart';

class AuthMagicLinkEndPageWidget extends StatelessWidget {
  const AuthMagicLinkEndPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnderlinedTextButtonWidget(
      onPressed: Provider.of<RouteProvider>(context, listen: false).pop,
      text: "Sign in with password",
    );
  }
}
