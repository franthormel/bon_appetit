import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class HomeConsumerWidget extends StatelessWidget {
  const HomeConsumerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      children: const [
        MainRecipesWidget(),
        WhatToCookWidget(),
      ],
    );
  }
}
