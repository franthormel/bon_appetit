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
            errorText: "Invalid email",
            labelText: "Your email address",
          ),
          style: Theme.of(context).textTheme.bodyText2,
          textInputAction: TextInputAction.next,
          onSubmitted: (email) {
            // TODO: Authenticate email
            print(email);
          },
        ),
        const SizedBox(height: 16.0),
        BlackTextButtonWidget(
          text: "NEXT",
          onPressed: () {
            // TODO: Authenticate email
            print(textController.text);
          },
          height: 50.0,
          width: double.infinity,
        ),
      ],
    );
  }
}
