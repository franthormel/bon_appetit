import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'style/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bon Appétit',
      theme: BonAppetitTheme.theme,
      home: const HomePage(),
    );
  }
}
