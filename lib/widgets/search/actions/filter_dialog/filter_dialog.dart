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
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            primary: true,
            itemBuilder: (context, i) => children[i],
            itemCount: children.length,
            separatorBuilder: (context, i) => const SizedBox(height: 10.0),
          ),
          Container(
            // TODO: Place two buttons (apply and cancel) and the number of results
            color: Colors.grey,
            width: double.infinity,
            height: kToolbarHeight,
          ),
        ],
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
