import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../router/router.gr.dart';
import '../../../services/providers/route_provider.dart';
import 'drawer_account_entry.dart';

class DrawerAccountWidget extends StatelessWidget {
  const DrawerAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(dense: true, title: Divider()),
        DrawerAccountEntryWidget(
          "Search",
          onTap: () {
            final router = Provider.of<RouteProvider>(context, listen: false);
            router.change(const SearchRoute());
          },
        ),
        const DrawerAccountEntryWidget("Sign In"),
        DrawerAccountEntryWidget(
          "SUBSCRIBE",
          textStyle: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(fontWeight: FontWeight.w500, letterSpacing: 0.9),
        ),
        const ListTile(dense: true, title: Divider()),
      ],
    );
  }
}
