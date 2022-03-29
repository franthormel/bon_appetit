import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/details/sponsor_note.dart';
import '../../others/header_details.dart';
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
          const SponsorNoteWidget(),
          const SizedBox(height: 20.0),
          // TODO: Modify for reuse for articles products if it looks good enough VISUALLY!
          HeaderDetailsWidget(
            text: "What you'll need",
            child: SizedBox(
              height: 230.0,
              child: ListView.separated(
                itemBuilder: (context, index) =>
                    RecipeDetailsUtensilWidget(utensils[index]),
                itemCount: utensils.length,
                primary: false,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
