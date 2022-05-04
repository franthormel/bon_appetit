import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/index.dart';
import '../router/index.dart';
import '../services/index.dart';
import '../widgets/index.dart';

class ConsumerPage extends StatelessWidget {
  const ConsumerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      resizeToAvoidBottomInset: false,
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
      body: Consumer2<RouteProvider, DatasetSource>(
        builder: (context, router, source, child) => ChangeNotifierProvider(
          create: (context) => SearchProvider(source),
          child: AutoRouter.declarative(
            routes: (context) => [...router.pageRouteInfo],
          ),
        ),
      ),
    );
  }
}
