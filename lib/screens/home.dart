import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';
import '../widgets/index.dart';

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
      body: ListView(
        children: [
          Container(
            color: BonAppetitColors.floralWhite,
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            child: Column(
              children: const [
                TodayMainRecipesWidget(),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
