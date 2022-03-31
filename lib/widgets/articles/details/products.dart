import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/header_details.dart';
import '../../others/horizontal_padding.dart';
import 'product.dart';

class ArticleDetailsProductsWidget extends StatelessWidget {
  final List<Product> products;

  const ArticleDetailsProductsWidget(
    this.products, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      // TODO Rework the same
      child: HeaderDetailsWidget(
        text: "Catalogue",
        child: SizedBox(
          height: 230.0,
          child: ListView.separated(
            itemBuilder: (context, index) =>
                ArticleDetailsProductWidget(products[index]),
            itemCount: products.length,
            primary: false,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 15.0),
          ),
        ),
      ),
    );
  }
}
