import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../router/router.gr.dart';
import 'home/home_providers.dart';

class HomePage extends StatelessWidget {
  // TODO When there are multiple pages use PageStorageKey('HomePage')
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
          IconButton(
            onPressed: () {
              AutoRouter.of(context).push(const SearchRoute());
            },
            icon: const Icon(Icons.search),
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
      body: const HomeProvidersWidget(),
    );
  }
}
