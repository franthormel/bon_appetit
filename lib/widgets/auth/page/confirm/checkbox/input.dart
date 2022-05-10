import 'package:flutter/material.dart';

class ConfirmCheckboxInputWidget extends StatefulWidget {
  const ConfirmCheckboxInputWidget({Key? key}) : super(key: key);

  @override
  State<ConfirmCheckboxInputWidget> createState() =>
      _ConfirmCheckboxInputWidgetState();
}

class _ConfirmCheckboxInputWidgetState
    extends State<ConfirmCheckboxInputWidget> {
  bool checked = true;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checked,
      onChanged: (value) {
        setState(() {
          checked = !checked;
        });
      },
    );
  }
}
