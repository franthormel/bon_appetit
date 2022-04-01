import 'package:flutter/material.dart';

import '../header_details.dart';

class DetailsProductCatalogueWidget extends StatelessWidget {
  final String header;
  final Widget Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final double height;

  const DetailsProductCatalogueWidget({
    required this.header,
    required this.itemCount,
    required this.itemBuilder,
    this.height = 230.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeaderDetailsWidget(
      header: header,
      child: SizedBox(
        height: height,
        child: ListView.separated(
          itemBuilder: itemBuilder,
          itemCount: itemCount,
          primary: false,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 15.0),
        ),
      ),
    );
  }
}
