import 'package:flutter/material.dart';

import '../../../services/index.dart';

class AuthAccountPageTitleWidget extends StatelessWidget {
  const AuthAccountPageTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final email = FirebaseAuthService.email;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        children: [
          Text(
            "My Account",
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
          if (email != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                email,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.normal),
              ),
            )
        ],
      ),
    );
  }
}
