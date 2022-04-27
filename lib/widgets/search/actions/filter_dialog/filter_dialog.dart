import 'package:flutter/material.dart';

import 'dietary_concerns.dart';
import 'ingredient.dart';
import 'meal_course.dart';
import 'popular.dart';
import 'title.dart';

class SearchPageActionFilterDialogWidget extends StatelessWidget {
  const SearchPageActionFilterDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: try to place a stacked container at the bottom containing two buttons (apply and cancel) and the number of results

    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        primary: true,
        itemBuilder: (context, i) => children[i],
        itemCount: children.length,
        separatorBuilder: (context, i) => const SizedBox(height: 10.0),
      ),
    );
  }

  List<Widget> get children {
    return const [
      SearchPageActionFilterDialogTitleWidget(),
      FilterPopularWidget(),
      FilterMealCourseWidget(),
      FilterDietaryConcernsWidget(),
      FilterIngredientWidget(),
    ];
  }
}
