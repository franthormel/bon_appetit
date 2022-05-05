import 'package:bon_appetit/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../style/index.dart';
import '../others/black_text_button.dart';
import 'label.dart';

class AuthEmailWidget extends StatelessWidget {
  const AuthEmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthLabelWidget(text: "Email"),
        const SizedBox(height: 16.0),
        TextField(
          controller: textController,
          cursorColor: BonAppetitColors.black,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: BonAppetitColors.black),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: BonAppetitColors.black),
            ),
            errorText: null, // TODO: Apply
            labelText: "Your email address",
          ),
          style: Theme.of(context).textTheme.bodyText2,
          textInputAction: TextInputAction.next,
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
    try {
      final exists = await FirebaseAuthService.checkIfEmailExists(email);

      // TODO: If email exists, proceed to next page
      print("Exists: $email : $exists");
    } on FirebaseAuthException catch (e) {
      // TODO: Show on TextField decoration's errorText property
      print("FirebaseError: ${e.code} |=| ${e.message}");
    } catch (e) {
      print("Error: $e");
    }
  }
}
