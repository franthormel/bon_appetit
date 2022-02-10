import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../widgets/index.dart';
import '../services/mock_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star_border),
          ),
        ],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: SvgPicture.asset(
          'assets/logo.svg',
          height: 50.0,
        ),
      ),
      body: FutureProvider(
        lazy: false,
        create: (context) => MockDataService.fetchRecipeDataset(),
        child: ListView(
          primary: true,
          children: const [
            MainRecipesWidget(),
            WhatToCookWidget(),
          ],
        ),
        initialData: null,
      ),
    );
  }
}
