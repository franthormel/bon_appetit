import 'package:bon_appetit/models/recipes/recipe.dart';
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
      group("compareDateUploadedTo() should sort by most recent dates to oldest", () {});
      group("compareRatingCountTo() should sort by most ratings to lowest", () {});
      group("compareRatingValueTo() should sort by highest ratings to lowest", () {});
    });
  });
}
