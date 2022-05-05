import 'package:bon_appetit/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: BonAppetitColors.black),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: BonAppetitColors.black),
            ),
            errorText: errorText,
            labelText: "Your email address",
          ),
          style: Theme.of(context).textTheme.bodyText2,
          textInputAction: TextInputAction.done,
          onSubmitted: (email) {
            checkEmail(email);
          },
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
    String? value;

    try {
      final exists = await FirebaseAuthService.checkIfEmailExists(email);

      // TODO: If email exists, proceed to next page
    } on FirebaseAuthException catch (e) {
      // TODO: Create service for handling Firebase exception codes
      if (e.code == 'invalid-email') {
        value = "Invalid email";
      } else {
        value = e.message;
      }
    } catch (e) {
      value = e.toString();
    }

    if (errorText != value) {
      setState(() {
        errorText = value;
      });
    }
  }
}
