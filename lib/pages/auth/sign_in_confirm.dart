import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/index.dart';
import '../../widgets/index.dart';

class AuthSignInConfirmPage extends StatelessWidget {
  const AuthSignInConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<FavoritesProvider>(context, listen: false).readFromFirestore();

    return const AuthMainWidget(
      header: "You’re signed in",
      subHeader: "You can resume right where you left off.",
      title: "Sign in success",
      child: AuthSignInPageConfirmWidget(),
    );
  }
}
