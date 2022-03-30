import 'dart:async';

import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  int value = 1;

  late final Timer timer;

  @override
  void initState() {
    timer = cycleThroughValue();
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Loading$dots")));
  }

  Timer cycleThroughValue() {
    return Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        value = (value + 1) % 4;
      });
    });
  }

  String get dots => "." * value;
}
