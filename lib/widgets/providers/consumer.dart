import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/router.gr.dart';
import '../../services/index.dart';
import '../index.dart';
import '../shared/appbar_title.dart';

class ConsumerWidget extends StatelessWidget {
  // TODO When there are multiple pages use PageStorageKey('HomePage')
  const ConsumerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star_border),
          ),
          IconButton(
            onPressed: () {
              final router = Provider.of<RouterProvider>(context, listen: false);
              router.change(const SearchRoute());
            },
            icon: const Icon(Icons.search),
          ),
        ],
        centerTitle: true,
        title: const AppBarTitleWidget(),
      ),
      body: Consumer<RouterProvider>(
        builder: (context, provider, child) => AutoRouter.declarative(
          routes: (context) => [provider.pageRouteInfo],
        ),
      ),
    );
  }
}
