import 'package:bon_appetit/models/index.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  group("Recipe", () {
    group("issue", () {
      test("should return null when dateIssue property is null", () {
        final recipe = Recipe(
          id: "1",
          categories: [],
          dateUploaded: DateTime.now(),
          description: "description",
          imageUrl: "imageUrl",
          ingredients: [],
          servings: "servings",
          steps: [],
          title: "title",
        );

        expect(recipe.issue, null);
      });
      test("should return expected value when dateIssue is set", () {
        final recipe = Recipe(
          id: "1",
          categories: [],
          dateIssue: "January 2022",
          dateUploaded: DateTime.now(),
          description: "description",
          imageUrl: "imageUrl",
          ingredients: [],
          servings: "servings",
          steps: [],
          title: "title",
        );

        expect(recipe.issue, "January 2022 Issue");
      });
    });

    group("heroTag", () {
      test("should return a String from its ObjectKey value", () {
        final recipe = Recipe(
          id: "1",
          categories: [],
          dateUploaded: DateTime.now(),
          description: "description",
          imageUrl: "imageUrl",
          ingredients: [],
          servings: "servings",
          steps: [],
          title: "title",
        );

        expect(recipe.heroTag, ObjectKey(recipe).toString());
      });
    });

    group("sorting", () {
      final r01_01_10c_15v = Recipe(
        dateUploaded: DateTime(2022, 1, 1),
        rating: const RecipeRating(count: "10", value: "1.5"),
        categories: [],
        description: "",
        id: "",
        imageUrl: "",
        ingredients: [],
        servings: "",
        steps: [],
        title: "",
      );
      final r02_02_20c_28v = Recipe(
        dateUploaded: DateTime(2022, 2, 2),
        rating: const RecipeRating(count: "20", value: "2.8"),
        categories: [],
        description: "",
        id: "",
        imageUrl: "",
        ingredients: [],
        servings: "",
        steps: [],
        title: "",
      );
      final r03_03_30c_50v = Recipe(
        dateUploaded: DateTime(2022, 3, 3),
        rating: const RecipeRating(count: "30", value: "5.0"),
        categories: [],
        description: "",
        id: "",
        imageUrl: "",
        ingredients: [],
        servings: "",
        steps: [],
        title: "",
      );
      final r04_04_40c_25v = Recipe(
        dateUploaded: DateTime(2022, 4, 4),
        rating: const RecipeRating(count: "40", value: "2.5"),
        categories: [],
        description: "",
        id: "",
        imageUrl: "",
        ingredients: [],
        servings: "",
        steps: [],
        title: "",
      );
      final r05_05_50c_49v = Recipe(
        dateUploaded: DateTime(2022, 5, 5),
        rating: const RecipeRating(count: "50", value: "4.9"),
        categories: [],
        description: "",
        id: "",
        imageUrl: "",
        ingredients: [],
        servings: "",
        steps: [],
        title: "",
      );
      final r06_06 = Recipe(
        dateUploaded: DateTime(2022, 6, 6),
        categories: [],
        description: "",
        id: "",
        imageUrl: "",
        ingredients: [],
        servings: "",
        steps: [],
        title: "",
      );
      final r07_07 = Recipe(
        dateUploaded: DateTime(2022, 7, 7),
        categories: [],
        description: "",
        id: "",
        imageUrl: "",
        ingredients: [],
        servings: "",
        steps: [],
        title: "",
      );

      group("should sort by the most recent dates to the oldest", () {
        final output = <Recipe>[
          r01_01_10c_15v,
          r02_02_20c_28v,
          r03_03_30c_50v,
          r04_04_40c_25v,
          r05_05_50c_49v,
          r06_06,
          r07_07,
        ];

        test("#1", () {});
      });

      group("should sort from the most ratings to the least", () {
        final output = <Recipe>[
          r05_05_50c_49v,
          r04_04_40c_25v,
          r03_03_30c_50v,
          r02_02_20c_28v,
          r01_01_10c_15v,
          r06_06,
          r07_07,
        ];
        final alOutput = <Recipe>[
          r05_05_50c_49v,
          r04_04_40c_25v,
          r03_03_30c_50v,
          r02_02_20c_28v,
          r01_01_10c_15v,
          r07_07,
          r06_06,
        ];
      });

      group("should sort from the highest ratings to the lowest", () {
        final output = <Recipe>[
          r03_03_30c_50v,
          r05_05_50c_49v,
          r02_02_20c_28v,
          r04_04_40c_25v,
          r01_01_10c_15v,
          r06_06,
          r07_07,
        ];
        final altOutput = <Recipe>[
          r03_03_30c_50v,
          r05_05_50c_49v,
          r02_02_20c_28v,
          r04_04_40c_25v,
          r01_01_10c_15v,
          r07_07,
          r06_06,
        ];
      });
    });
  });
}
