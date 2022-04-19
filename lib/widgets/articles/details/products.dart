import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/details/product_catalogue.dart';
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
      child: DetailsProductCatalogueWidget(
        header: "Catalogue",
        itemBuilder: (context, i) => ArticleDetailsProductWidget(products[i]),
        itemCount: products.length,
      ),
    );
  }
}
