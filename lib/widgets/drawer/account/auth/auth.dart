import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';

import 'in.dart';
import 'out.dart';

class DrawerAccountAuthWidget extends StatelessWidget {
  const DrawerAccountAuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      initialData: null,
      stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          if (kDebugMode) {
            print(">>> Auth Error: ${snapshot.error}");
          }
        }

        if (snapshot.data == null) {
          return const DrawerAccountAuthOutWidget();
        } else  {
          return const DrawerAccountAuthInWidget();
        }
      },
    );
  }
}
