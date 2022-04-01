import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../style/colors.dart';
import '../../others/cached_image.dart';

class ArticleDetailsProductWidget extends StatelessWidget {
  final Product product;

  const ArticleDetailsProductWidget(
    this.product, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO Finish and compare with utensil.dart on sameness
    return SizedBox(
      width: 300.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: CachedImageWidget(product.imageUrl),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Column(
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
