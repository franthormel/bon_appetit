import 'package:flutter/material.dart';

import '../../style/index.dart';

class AuthSeparatorTextWidget extends StatelessWidget {
  const AuthSeparatorTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Divider(),
        Container(
          width: 55.0,
          color: BonAppetitColors.white,
          child: const Center(child: Text("or")),
        ),
      ],
    );
  }
}
