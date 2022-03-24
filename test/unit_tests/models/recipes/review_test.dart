import 'package:bon_appetit/models/recipes/review.dart';
import 'package:test/test.dart';

void main() {
  group("RecipeReview", () {
    group("toString()", () {
      test("value when date and review are set", () {
        final review = RecipeReview(review: "Good", date: DateTime(2022));
        expect(review.toString(), "January 1, 2022");
      });
      test("value when date, review, and author are set", () {
        final review = RecipeReview(
          review: "Good",
          date: DateTime(2022),
          author: "Anonymous",
        );

        expect(review.toString(), "Anonymous · January 1, 2022");
      });
      test("value when date, review, and location are set", () {
        final review = RecipeReview(
          review: "Good",
          date: DateTime(2022),
          location: "Here",
        );

        expect(review.toString(), "Here · January 1, 2022");
      });
      test("value when all properties are set", () {
        final review = RecipeReview(
            date: DateTime(2022),
            review: "Good",
            author: "Anonymous",
            location: "Here");

        expect(review.toString(), "Anonymous · Here · January 1, 2022");
      });
    });
  });
}
