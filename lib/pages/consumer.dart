import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../router/index.dart';
import '../widgets/index.dart';

class ConsumerPage extends StatelessWidget {
  // TODO When using bottom navigation bars and there are multiple pages use PageStorageKey('HomePage')
  const ConsumerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              final route = Provider.of<RouteProvider>(context, listen: false);
              route.change(const SearchRoute());
            },
            icon: const Icon(Icons.search),
          ),
        ],
        centerTitle: true,
        title: const AppbarTitleWidget(),
      ),
      body: Consumer<RouteProvider>(
        builder: (context, provider, child) => AutoRouter.declarative(
          routes: (context) => [...provider.pageRouteInfo],
        ),
      ),
    );
  }
}
