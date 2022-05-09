import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../services/index.dart';

/// This widget acts as a navigator when it comes to the user's authentication state.
class AuthUserChangeWidget extends StatelessWidget {
  /// This widget will be shown if the user is authenticated and/or signed in.
  final Widget userWidget;

  /// This widget will be displayed if the user is not authenticated and/or signed out.
  final Widget nullUserWidget;

  const AuthUserChangeWidget({
    required this.userWidget,
    required this.nullUserWidget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      initialData: null,
      stream: FirebaseAuthService.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          if (kDebugMode) {
            print(">>> Auth Error: ${snapshot.error}");
          }
        }

        if (snapshot.data == null) {
          return nullUserWidget;
        } else {
          return userWidget;
        }
      },
    );
  }
}
