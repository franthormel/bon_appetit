import 'package:bon_appetit/models/recipes/nutrition_serving.dart';
import 'package:test/test.dart';

void main() {
  group("RecipeNutritionServing", () {
    group("toString()", () {
      test("should return expected value #1", () {
        const nutritionServing = RecipeNutritionServing(
          name: "Calories",
          unit: "100",
          value: "kcal",
        );

        expect(nutritionServing.toString(), "Calories (100) kcal");
      });
      test("should return expected value #2", () {
        const nutritionServing = RecipeNutritionServing(
          name: "Fat",
          unit: "150",
          value: "cal",
        );

        expect(nutritionServing.toString(), "Fat (150) cal");
      });
      test("should return expected value #3", () {
        const nutritionServing = RecipeNutritionServing(
          name: "Saturated Fat",
          unit: "200",
          value: "g",
        );

        expect(nutritionServing.toString(), "Saturated Fat (200) g");
      });
    });
  });
}
