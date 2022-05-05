import 'package:bon_appetit/services/auth.dart';
import 'package:flutter/material.dart';

import '../../style/index.dart';
import '../others/black_text_button.dart';
import 'label.dart';

class AuthEmailWidget extends StatefulWidget {
  const AuthEmailWidget({Key? key}) : super(key: key);

  @override
  State<AuthEmailWidget> createState() => _AuthEmailWidgetState();
}

class _AuthEmailWidgetState extends State<AuthEmailWidget> {
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
            checkEmail(email);
          },
          style: Theme.of(context).textTheme.bodyText2,
          textInputAction: TextInputAction.done,
        ),
        const SizedBox(height: 16.0),
        BlackTextButtonWidget(
          text: "NEXT",
          onPressed: () {
            checkEmail(textController.text);
          },
          height: 50.0,
          width: double.infinity,
        ),
      ],
    );
  }

  Future<void> checkEmail(String email) async {
    try {
      final emailExists = await FirebaseAuthService.checkIfEmailExists(email);

      if (emailExists) {
        // TODO: Show login page
      } else {
        // TODO: Show register page
      }
    } catch (e) {
      setState(() {
        errorText = "Invalid email";
      });
    }
  }
}
