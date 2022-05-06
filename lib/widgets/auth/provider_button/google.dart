import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../style/index.dart';

class AuthGoogleProviderButtonWidget extends StatelessWidget {
  const AuthGoogleProviderButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
      onPressed: () {},
      icon: Container(
        color: BonAppetitColors.white,
        child: SvgPicture.asset('assets/google.svg'),
      ),
      label: const SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            "SIGN IN WITH GOOGLE",
            style: TextStyle(color: BonAppetitColors.white),
          ),
        ),
      ),
    );
  }
}
