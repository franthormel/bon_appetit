import 'package:flutter/material.dart';

import '../style/index.dart';
import '../widgets/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  // TODO: 2. Create provider for search page
  // 1. Controller for TextField
  // 2. Show by (All Content, Recipes, Articles, Videos)
  // 3. Sort by (Relevance, newest, highest rating, most reviewed)

  // TODO: 3. Separate widgets by functionality and for future use (different sizes and platforms)

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final numbers = List.generate(40, (<int>(int i) => i));

    return Scaffold(
      appBar: AppBar(
        actions: const [
          SearchPageShowByTypeWidget(),
          SearchPageFilterWidget(),
          SearchPageSortWidget(),
        ],
      ),
      body: Container(
        color: BonAppetitColors.cultured,
        child: Column(
          children: [
            Container(
              color: BonAppetitColors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      helperStyle: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(
                              fontWeight: FontWeight.w400, letterSpacing: 0.4),
                      helperText: "10,000 matching results",
                      hintText: "Find a Recipe",
                      prefixIcon: IconButton(
                        color: BonAppetitColors.black,
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      prefixIconColor: BonAppetitColors.black,
                      suffixIcon: IconButton(
                        color: BonAppetitColors.black,
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          if (textController.text.isNotEmpty) {
                            textController.clear();
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.separated(
                  // TODO: 1. Place results
                  itemBuilder: (context, index) => Text("${numbers[index]}"),
                  itemCount: numbers.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
