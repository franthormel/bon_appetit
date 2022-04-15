import 'package:flutter/material.dart';

import '../../../style/index.dart';

class DrawerPageHeaderWidget extends StatelessWidget {
  final String header;
  final String? subHeader;

  const DrawerPageHeaderWidget(
    this.header, {
    this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 32.0,
      ),
      color: BonAppetitColors.sizzlingSunrise,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            header,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          if (subHeader != null)
            Text(
              subHeader!,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
        ],
      ),
    );
  }
}
