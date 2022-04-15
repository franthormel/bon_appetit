import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../style/index.dart';

class DetailsProductShopCardWidget extends StatelessWidget {
  final ProductShop shop;

  const DetailsProductShopCardWidget(this.shop, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: BonAppetitColors.black, width: 1.5),
          ),
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Wrap(
            children: [
              if (shop.priceDiscounted != null)
                Text(
                  "\$${shop.priceDiscounted!}",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(decoration: TextDecoration.lineThrough),
                ),
              Align(
                alignment: alignment, // sad
                child: Text(
                  shop.toString(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // The reason the alignment is set to left when the shop has a
  // discounted price is that there is an additional widget that
  // contains a text with a strikethrough.
  //
  // In other words, if there is a discounted price text widget, it consumes more
  // width space and Alignment.center makes it seem the text is broken and unaligned.
  Alignment get alignment =>
      shop.priceDiscounted != null ? Alignment.centerLeft : Alignment.center;
}
