import 'package:flutter/material.dart';

import '../../../models/index.dart';

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
      width: 130.0,
      child: Text(product.name),
    );
  }
}
