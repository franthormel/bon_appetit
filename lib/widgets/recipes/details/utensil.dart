import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/cached_image.dart';

class RecipeDetailsUtensilWidget extends StatelessWidget {
  final RecipeUtensil utensil;

  const RecipeDetailsUtensilWidget(this.utensil, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130.0,
      child: Column(
        children: [
          CachedImageWidget(utensil.imageUrl),
          const SizedBox(height: 10.0),
          Expanded(
            flex: 2,
            child: Text(
              utensil.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Wrap(
              children: [
                if (utensil.shop.priceDiscounted != null)
                  Text(
                    "\$${utensil.shop.priceDiscounted!}",
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.2,
                        ),
                  ),
                Text(
                  utensil.shop.toString(),
                  style: Theme.of(context).textTheme.caption?.copyWith(
                      fontWeight: FontWeight.w500, letterSpacing: 0.2),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
