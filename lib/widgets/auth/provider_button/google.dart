import 'package:flutter/material.dart';

import '../../../style/index.dart';

class AuthGoogleProviderButtonWidget extends StatelessWidget {
  const AuthGoogleProviderButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.black,
      height: 50.0,
      width: double.infinity,
      child: const Center(
        child: Text(
          "SIGN IN WITH GOOGLE",
          style: TextStyle(color: BonAppetitColors.white),
        ),
      ),
    );
  }
}
