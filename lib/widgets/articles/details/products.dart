import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/header_details.dart';

class ArticleDetailsProductsWidget extends StatelessWidget {
  final List<Product> products;

  const ArticleDetailsProductsWidget(
    this.products, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeaderDetailsWidget(text: "Catalogue", child: Container());
  }
}
