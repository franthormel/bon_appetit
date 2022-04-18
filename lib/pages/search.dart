import 'package:flutter/material.dart';

import '../style/index.dart';
import '../widgets/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numbers = List.generate(40, (<int>(int i) => i));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
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
                children: const [
                  TextField(),
                  SizedBox(height: 8.0),
                  Text("10,000 matching results"),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.separated(
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
