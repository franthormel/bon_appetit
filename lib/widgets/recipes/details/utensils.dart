import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/details/product_catalogue.dart';
import '../../others/details/sponsor_text.dart';
import '../../others/horizontal_padding.dart';
import 'utensil.dart';

class RecipeDetailsUtensilsWidget extends StatelessWidget {
  final List<RecipeUtensil> utensils;

  const RecipeDetailsUtensilsWidget(
    this.utensils, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SponsorTextWidget(),
          const SizedBox(height: 20.0),
          DetailsProductCatalogueWidget(
            header: "What you'll need",
            itemBuilder: (context, index) =>
                RecipeDetailsUtensilWidget(utensils[index]),
            itemCount: utensils.length,
          ),
        ],
      ),
    );
  }
}
