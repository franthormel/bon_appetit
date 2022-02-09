import '../models/recipe.dart';

class MockDataService {
  static Recipe get todayMainRecipe => Recipe(
        description:
            "This weeknight-friendly pasta uses one skillet, one pot, and plenty of cheese.",
        imageUrl:
            "assets/images/recipes/one-pot-baked-pasta-with-sausage-and-broccoli-rabe.jpg",
        ratingCount: 55,
        ratingValue: 4.39,
        title: "Baked Pasta With Sausage and Broccoli Rabe",
        tag: "Today's Recipe",
      );

  static List<Recipe> get otherMainRecipes => <Recipe>[
        Recipe(
          imageUrl:
              "assets/images/recipes/Breakfast-Blondies-recipe-16x9-01032019.jpg",
          title: "Breakfast Blondies",
          ratingCount: 65,
          ratingValue: 4.35,
        ),
        Recipe(
          imageUrl:
              "assets/images/recipes/0320-Dutch-Oven-Squash-Squash-au-Vin.jpg",
          title: "Squash au Vin",
          tag: "Vegetarian",
          ratingCount: 32,
          ratingValue: 3.92,
        ),
        Recipe(
          imageUrl: "assets/images/recipes/peri-peri-meatballs-3.jpg",
          title: "Piri-Piri Meatballs",
          ratingCount: 49,
          ratingValue: 4.71,
        ),
      ];
}
