import 'package:flutter/material.dart';

import '../../services/mock_data.dart';

class TodayMainRecipesWidget extends StatelessWidget {
  const TodayMainRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todayRecipe = MockDataService.todayMainRecipe;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(todayRecipe.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Chip(label: Text(todayRecipe.tag!)),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Text(
          todayRecipe.title,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 16.0),
        Text(
          todayRecipe.description!,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 16.0),
        Row(
          children: [
            const Icon(Icons.star),
            Text(
              todayRecipe.rating,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        )
      ],
    );
  }
}
