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
      final r10c_15v = Recipe(
        dateUploaded: DateTime(2022),
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
      final r20c_28v = Recipe(
        dateUploaded: DateTime(2022),
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
      final r30c_50v = Recipe(
        dateUploaded: DateTime(2022),
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
      final r40c_25v = Recipe(
        dateUploaded: DateTime(2022),
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
      final r50c_49v = Recipe(
        dateUploaded: DateTime(2022),
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
        dateUploaded: DateTime(2022),
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
        dateUploaded: DateTime(2022),
        categories: [],
        description: "",
        id: "",
        imageUrl: "",
        ingredients: [],
        servings: "",
        steps: [],
        title: "",
      );

      group("should sort from the most ratings to the least", () {
        final output = <Recipe>[
          r50c_49v,
          r40c_25v,
          r30c_50v,
          r20c_28v,
          r10c_15v,
          r06_06,
          r07_07,
        ];
        final altOutput = <Recipe>[
          r50c_49v,
          r40c_25v,
          r30c_50v,
          r20c_28v,
          r10c_15v,
          r07_07,
          r06_06,
        ];

        test("already sorted", () {
          final input = <Recipe>[
            r50c_49v,
            r40c_25v,
            r30c_50v,
            r20c_28v,
            r10c_15v,
            r06_06,
            r07_07,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(output, input);
        });

        test("already sorted alternative", () {
          final input = <Recipe>[
            r50c_49v,
            r40c_25v,
            r30c_50v,
            r20c_28v,
            r10c_15v,
            r07_07,
            r06_06,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(altOutput, input);
        });

        test("unsorted #1", () {
          final input = <Recipe>[
            r06_06,
            r10c_15v,
            r07_07,
            r30c_50v,
            r50c_49v,
            r40c_25v,
            r20c_28v,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(output, input);
        });

        test("unsorted #2", () {
          final input = <Recipe>[
            r06_06,
            r50c_49v,
            r40c_25v,
            r30c_50v,
            r20c_28v,
            r10c_15v,
            r07_07,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(output, input);
        });

        test("unsorted #3", () {
          final input = <Recipe>[
            r06_06,
            r40c_25v,
            r50c_49v,
            r20c_28v,
            r10c_15v,
            r30c_50v,
            r07_07,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(output, input);
        });

        test("unsorted #4", () {
          final input = <Recipe>[
            r06_06,
            r07_07,
            r10c_15v,
            r40c_25v,
            r30c_50v,
            r50c_49v,
            r20c_28v,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(output, input);
        });

        test("unsorted #5", () {
          final input = <Recipe>[
            r06_06,
            r30c_50v,
            r10c_15v,
            r50c_49v,
            r40c_25v,
            r20c_28v,
            r07_07,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(output, input);
        });

        test("unsorted #6", () {
          final input = <Recipe>[
            r50c_49v,
            r20c_28v,
            r10c_15v,
            r40c_25v,
            r06_06,
            r30c_50v,
            r07_07,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(output, input);
        });

        test("unsorted #7", () {
          final input = <Recipe>[
            r50c_49v,
            r06_06,
            r30c_50v,
            r10c_15v,
            r07_07,
            r20c_28v,
            r40c_25v,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(output, input);
        });

        test("unsorted alternative #1", () {
          final input = <Recipe>[
            r07_07,
            r40c_25v,
            r30c_50v,
            r06_06,
            r20c_28v,
            r50c_49v,
            r10c_15v,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #2", () {
          final input = <Recipe>[
            r20c_28v,
            r07_07,
            r06_06,
            r40c_25v,
            r30c_50v,
            r50c_49v,
            r10c_15v,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #3", () {
          final input = <Recipe>[
            r20c_28v,
            r40c_25v,
            r30c_50v,
            r07_07,
            r50c_49v,
            r10c_15v,
            r06_06,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #4", () {
          final input = <Recipe>[
            r07_07,
            r40c_25v,
            r50c_49v,
            r10c_15v,
            r30c_50v,
            r06_06,
            r20c_28v,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #5", () {
          final input = <Recipe>[
            r20c_28v,
            r50c_49v,
            r07_07,
            r40c_25v,
            r30c_50v,
            r10c_15v,
            r06_06,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #6", () {
          final input = <Recipe>[
            r50c_49v,
            r10c_15v,
            r20c_28v,
            r30c_50v,
            r07_07,
            r40c_25v,
            r06_06,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #7", () {
          final input = <Recipe>[
            r40c_25v,
            r10c_15v,
            r30c_50v,
            r07_07,
            r06_06,
            r20c_28v,
            r50c_49v,
          ];

          input.sort((a, b) => a.compareRatingCountTo(b));

          expect(altOutput, input);
        });
      });

      group("should sort from the highest ratings to the lowest", () {
        final output = <Recipe>[
          r30c_50v,
          r50c_49v,
          r20c_28v,
          r40c_25v,
          r10c_15v,
          r06_06,
          r07_07,
        ];
        final altOutput = <Recipe>[
          r30c_50v,
          r50c_49v,
          r20c_28v,
          r40c_25v,
          r10c_15v,
          r07_07,
          r06_06,
        ];

        test("already sorted", () {
          final input = <Recipe>[
            r30c_50v,
            r50c_49v,
            r20c_28v,
            r40c_25v,
            r10c_15v,
            r06_06,
            r07_07,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(output, input);
        });

        test("already sorted alternative", () {
          final input = <Recipe>[
            r30c_50v,
            r50c_49v,
            r20c_28v,
            r40c_25v,
            r10c_15v,
            r07_07,
            r06_06,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(altOutput, input);
        });

        test("unsorted #1", () {
          final input = <Recipe>[
            r40c_25v,
            r20c_28v,
            r06_06,
            r10c_15v,
            r30c_50v,
            r50c_49v,
            r07_07,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(output, input);
        });

        test("unsorted #2", () {
          final input = <Recipe>[
            r06_06,
            r20c_28v,
            r10c_15v,
            r50c_49v,
            r40c_25v,
            r07_07,
            r30c_50v,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(output, input);
        });

        test("unsorted #3", () {
          final input = <Recipe>[
            r06_06,
            r40c_25v,
            r07_07,
            r50c_49v,
            r20c_28v,
            r10c_15v,
            r30c_50v,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(output, input);
        });

        test("unsorted #4", () {
          final input = <Recipe>[
            r50c_49v,
            r40c_25v,
            r06_06,
            r30c_50v,
            r20c_28v,
            r07_07,
            r10c_15v,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(output, input);
        });

        test("unsorted #5", () {
          final input = <Recipe>[
            r06_06,
            r40c_25v,
            r20c_28v,
            r30c_50v,
            r10c_15v,
            r07_07,
            r50c_49v,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(output, input);
        });

        test("unsorted #6", () {
          final input = <Recipe>[
            r40c_25v,
            r06_06,
            r30c_50v,
            r50c_49v,
            r07_07,
            r20c_28v,
            r10c_15v,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(output, input);
        });

        test("unsorted #7", () {
          final input = <Recipe>[
            r50c_49v,
            r20c_28v,
            r40c_25v,
            r30c_50v,
            r06_06,
            r10c_15v,
            r07_07,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(output, input);
        });

        test("unsorted alternative #1", () {
          final input = <Recipe>[
            r07_07,
            r40c_25v,
            r20c_28v,
            r50c_49v,
            r10c_15v,
            r30c_50v,
            r06_06,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #2", () {
          final input = <Recipe>[
            r20c_28v,
            r07_07,
            r30c_50v,
            r06_06,
            r40c_25v,
            r50c_49v,
            r10c_15v,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #3", () {
          final input = <Recipe>[
            r20c_28v,
            r07_07,
            r50c_49v,
            r06_06,
            r40c_25v,
            r30c_50v,
            r10c_15v,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #4", () {
          final input = <Recipe>[
            r07_07,
            r50c_49v,
            r10c_15v,
            r40c_25v,
            r30c_50v,
            r06_06,
            r20c_28v,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #5", () {
          final input = <Recipe>[
            r20c_28v,
            r30c_50v,
            r10c_15v,
            r50c_49v,
            r07_07,
            r40c_25v,
            r06_06,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #6", () {
          final input = <Recipe>[
            r50c_49v,
            r30c_50v,
            r07_07,
            r40c_25v,
            r10c_15v,
            r20c_28v,
            r06_06,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(altOutput, input);
        });

        test("unsorted alternative #7", () {
          final input = <Recipe>[
            r07_07,
            r20c_28v,
            r50c_49v,
            r06_06,
            r40c_25v,
            r10c_15v,
            r30c_50v,
          ];

          input.sort((a, b) => a.compareRatingValueTo(b));

          expect(altOutput, input);
        });
      });
    });
  });
}
