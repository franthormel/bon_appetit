import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../services/index.dart';

/// This widget acts as a mediator when it comes to the user's authentication state.
class AuthUserChangeWidget extends StatelessWidget {
  /// This widget will be displayed if the user IS AUTHENTICATED and/or signed in.
  final Widget userWidget;

  /// This widget will be displayed if the user IS NOT AUTHENTICATED and/or signed out.
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

        // Display the unauthenticated user widget
        if (snapshot.data == null) {
          // TODO: Reset the FavoritesProvider state when the user signs-out
          return nullUserWidget;
        }

        // Display the widget for the authenticated user
        return userWidget;
      },
    );
  }
}
