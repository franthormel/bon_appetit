import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DrawerAccountEntryWidget extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final TextStyle? textStyle;

  const DrawerAccountEntryWidget(
    this.text, {
    this.onTap,
    this.textStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        text,
        style: textStyle ??
            Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(fontWeight: FontWeight.w500),
      ),
      onTap: () {
        if (onTap != null) {
          onTap!();
        }

        AutoRouter.of(context).pop();
      },
    );
  }
}
