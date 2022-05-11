import 'package:flutter/material.dart';

import 'input.dart';
import 'label.dart';

class AuthConfirmPageCheckboxWidget extends StatelessWidget {
  const AuthConfirmPageCheckboxWidget({Key? key}) : super(key: key);

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
