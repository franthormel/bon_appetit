import 'package:bon_appetit/models/index.dart';
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
  });
}
