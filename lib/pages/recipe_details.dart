import 'package:bon_appetit/widgets/recipes/details/rating.dart';
import 'package:flutter/material.dart';

import '../models/index.dart';
import '../style/colors.dart';
import '../widgets/index.dart';

class RecipeDetailsPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailsPage(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopWidget(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            )
          ],
        ),
        body: DesignedContainerWidget(
          child: Center(
            child: ListView.separated(
              itemBuilder: (context, index) => children[index],
              itemCount: children.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 15.0),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> get children => [
        RecipeDetailsIssueWidget(recipe.issue),
        RecipeDetailsTitleWidget(recipe.title),
        if (recipe.author != null) RecipeDetailsAuthorWidget(recipe.author!),
        RecipeDetailsDateUploadedWidget(recipe.dateUploaded),
        const Divider(color: BonAppetitColors.black),
        if (recipe.rating != null) RecipeDetailsRatingWidget(recipe.rating!),
        const RecipeDetailsReviewHeaderWidget(),
      ];
}
