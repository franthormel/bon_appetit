import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Make the ellipsis animated (hint: call setState with delays)
    return const Scaffold(body: Center(child: Text("Loading...")));
  }
}
