import 'package:flutter/material.dart';

class AuthConfirmPageUtilityTextWidget extends StatelessWidget {
  const AuthConfirmPageUtilityTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(fontWeight: FontWeight.w400, letterSpacing: 0.4),
          children: [
            textSpan("By creating an account you agree to our "),
            underlinedTextSpan("User agreement"),
            textSpan(" (including the "),
            underlinedTextSpan("Class Action Waiver & Arbitration Provisions"),
            textSpan("), our "),
            underlinedTextSpan("Privacy Policy & Cookie Statement"),
            textSpan(
              ", and to receive marketing and account-related emails from Bon Appétit.",
            ),
          ],
        ),
      ),
    );
  }

  TextSpan textSpan(String text) => TextSpan(text: text);

  TextSpan underlinedTextSpan(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(decoration: TextDecoration.underline),
    );
  }
}
