import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../services/assets_loader.dart';
import '../../../style/colors.dart';
import '../../../style/theme_radley.dart';
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
          FutureBuilder<String>(
            builder: (context, snapshot) {
              final data = snapshot.hasData ? snapshot.data! : "";

              return Text(data, style: BonAppetitThemeRadley.bodyItalic);
            },
            future: AssetsLoaderService.loadSponsorTxtFile(),
            initialData: "",
          ),
          const SizedBox(height: 15.0),
          Text(
            "What you'll need",
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 10.0),
          const Divider(color: BonAppetitColors.black),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 250.0,
            child: ListView.separated(
              itemBuilder: (context, index) =>
                  RecipeDetailsUtensilWidget(utensils[index]),
              itemCount: utensils.length,
              primary: false,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
