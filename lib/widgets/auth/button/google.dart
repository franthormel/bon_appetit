import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'size.dart';

class AuthGoogleProviderButtonWidget extends StatelessWidget {
  const AuthGoogleProviderButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthButtonSizeWidget(
      child: ElevatedButton.icon(
        icon: SvgPicture.asset('assets/google.svg'),
        label: const Center(child: Text("SIGN IN WITH GOOGLE")),
        onPressed: () {},
      ),
    );
  }
}
