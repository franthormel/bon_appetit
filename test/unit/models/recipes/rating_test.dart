import 'package:bon_appetit/models/recipes/rating.dart';
import 'package:test/test.dart';

void main() {
  group("RecipeRating", () {
    group("toString()", () {
      test("should return expected value #1", () {
        const rating = RecipeRating(count: "10", value: "4.5");
        expect(rating.toString(), "10 (4.5)");
      });
      test("should return expected value #2", () {
        const rating = RecipeRating(count: "100", value: "4.3");
        expect(rating.toString(), "100 (4.3)");
      });
      test("should return expected value #3", () {
        const rating = RecipeRating(count: "200", value: "4.0");
        expect(rating.toString(), "200 (4.0)");
      });
    });
  });
}
