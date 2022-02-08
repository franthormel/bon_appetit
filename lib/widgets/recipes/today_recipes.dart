import 'package:flutter/material.dart';

class TodayRecipesWidget extends StatelessWidget {
  const TodayRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                'assets/images/recipes/one-pot-baked-pasta-with-sausage-and-broccoli-rabe.jpg',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(
                label: Text("Today's Recipe"),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Text(
          'Baked Pasta With Sausage and Broccoli Rabe',
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 16.0),
        Text(
          'This weeknight-friendly pasta uses one skillet, one pot, and plenty of cheese.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 16.0),
        Row(
          children: [
            const Icon(Icons.star),
            Text(
              '4.39 (55)',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        )
      ],
    );
  }
}
