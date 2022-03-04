import 'package:flutter/material.dart';

import 'drawer_account.dart';
import 'drawer_footer.dart';
import 'drawer_router.dart';

class DrawerContentsWidget extends StatelessWidget {
  const DrawerContentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...routerWidgets,
        const DrawerAccountWidget(),
        const DrawerFooterWidget(),
      ],
    );
  }

  List<Widget> get routerWidgets {
    final widgets = <Widget>[];

    for (final route in routes) {
      widgets.add(DrawerRouterWidget(route));
    }

    return widgets;
  }

  // TODO: Create blank pages for each and convert the return type from List<String> to Map<String, PageRouteInfo>
  List<String> get routes {
    return <String>[
      "Recipes",
      "Cooking",
      "Culture",
      "Shopping",
      "Restaurants",
      "BA Market",
      "Videos",
      "Podcast",
      "Merch Shop"
    ];
  }
}
