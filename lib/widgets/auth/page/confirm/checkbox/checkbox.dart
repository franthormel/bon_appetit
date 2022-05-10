import 'package:flutter/material.dart';

import 'input.dart';
import 'label.dart';

class AuthPageConfirmCheckboxWidget extends StatelessWidget {
  const AuthPageConfirmCheckboxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ConfirmCheckboxInputWidget(),
        ConfirmCheckboxLabelWidget(),
      ],
    );
  }
}
