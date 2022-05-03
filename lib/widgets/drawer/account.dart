import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';
import 'account_entry.dart';

class DrawerAccountWidget extends StatelessWidget {
  const DrawerAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = Provider.of<RouteProvider>(context, listen: false);

    return Column(
      children: [
        const ListTile(dense: true, title: Divider()),
        DrawerAccountEntryWidget(
          "Search",
          onTap: () {
            router.change(const SearchRoute());
          },
        ),
        DrawerAccountEntryWidget(
          "Sign In",
          onTap: () {
            router.change(const AuthSignInRoute());
          },
        ),
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
