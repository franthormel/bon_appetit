import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class AuthAccountPage extends StatelessWidget {
  const AuthAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldedWillPopWidget(
      appBar: AppBar(),
      body: const AuthAccountPageWidget(),
    );
  }
}
