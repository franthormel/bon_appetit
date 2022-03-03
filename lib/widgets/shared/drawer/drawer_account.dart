import 'package:auto_route/auto_route.dart';
import 'package:bon_appetit/router/router.gr.dart';
import 'package:flutter/material.dart';

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
            AutoRouter.of(context).push(const SearchRoute());
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
