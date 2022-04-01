import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/cached_image.dart';
import 'product_shop_card.dart';

class ArticleDetailsProductWidget extends StatelessWidget {
  final Product product;

  const ArticleDetailsProductWidget(
    this.product, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: CachedImageWidget(product.imageUrl),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  product.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8.0),
                ...productShops,
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get productShops {
    final widgets = <Widget>[];

    for (final shop in product.shops) {
      widgets.addAll([
        DetailsProductShopCardWidget(shop),
        if (product.shops.last != shop) const SizedBox(height: 8.0),
      ]);
    }

    return widgets;
  }
}
