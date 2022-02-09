import '../models/recipe_dataset.dart';

abstract class BonAppetitDataService {
  Future<RecipeDataset> get recipeDataset;
}
