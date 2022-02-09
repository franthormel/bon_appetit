import '../models/recipe.dart';

class MockDataService {
  static Recipe get todayMainRecipe => Recipe(
        categories: [
          "Broccoli Rabe",
          "Vegetable",
          "Fontina",
          "Cheese",
          "Cheddar",
          "Pasta Shells",
          "Quick",
          "Easy",
          "Weeknight Meals",
          "One Pot Meals",
          "Main",
          "Nut-Free",
          "Dinner",
          "Pasta",
          "Rigatoni",
          "Pasta & Noodles",
          "Sausage",
          "Meat",
        ],
        description:
            "This weeknight-friendly pasta uses one skillet, one pot, and plenty of cheese.",
        imageUrl:
            "assets/images/recipes/one-pot-baked-pasta-with-sausage-and-broccoli-rabe.jpg",
        ratingCount: 55,
        ratingValue: 4.39,
        tag: "Today's Recipe",
        title: "Baked Pasta With Sausage and Broccoli Rabe",
      );

  static List<Recipe> get otherMainRecipes => <Recipe>[
        Recipe(
          categories: [
            "Cookie",
            "Dessert",
            "Bar Cookie",
            "Walnut",
            "Nut",
            "Hazelnut",
            "Pecan",
            "Flaxseed Meal",
            "Flour",
            "Snack",
            "Gluten Free",
            "Vegetarian",
            "Healthyish",
            "Baking",
            "Breakfast",
          ],
          description:
              "Forget breakfast bars or muffins: Our new favorite grab-and-go breakfast is a blondie. Think of them like a healthyish muffin in bar form. Made with almond butter and flaxseed meal, they’re grain-free and packed full of protein.",
          imageUrl:
              "assets/images/recipes/Breakfast-Blondies-recipe-16x9-01032019.jpg",
          ratingCount: 65,
          ratingValue: 4.35,
          title: "Breakfast Blondies",
        ),
        Recipe(
          categories: [
            "French",
            "European",
            "Kabocha Squash",
            "Squash",
            "Vegetable",
            "Delicata Squash",
            "Winter",
            "Main",
            "Nut-Free",
            "Healthyish",
            "Dinner",
          ],
          description:
              "What would happen if you gave winter squash the coq au vin treatment? Layers of flavor from browned mushrooms, wine, and miso that give the classic a run for its money.",
          imageUrl:
              "assets/images/recipes/0320-Dutch-Oven-Squash-Squash-au-Vin.jpg",
          ratingCount: 32,
          ratingValue: 3.92,
          tag: "Vegetarian",
          title: "Squash au Vin",
        ),
        Recipe(
          categories: [
            "Meatball",
            "Ground Beef",
            "Beef",
            "Meat",
            "Chile",
            "Vegetable",
            "Fresno Chile",
            "Main",
            "Starter",
            "Nut-Free",
            "Dinner",
          ],
          description:
              "Fresh piri-piri chiles can be difficult to find in the U.S., so for our take on a vibrant piri-piri sauce, we subbed in a fresh Fresno chile, which carries noticeable heat and a delicious fruity flavor. You can also double the sauce recipe and use it on anything from chicken to pasta the next day.",
          imageUrl: "assets/images/recipes/peri-peri-meatballs-3.jpg",
          ratingCount: 49,
          ratingValue: 4.71,
          title: "Piri-Piri Meatballs",
        ),
      ];
}
