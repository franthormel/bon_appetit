import 'package:json_annotation/json_annotation.dart';

part 'recipe.g.dart';

@JsonSerializable()
// Ordering of data MATTERS for this class.
class DatasetRecipeManager {
  final List<String> main;
  final List<String> suggested;
  final List<String> trending;

  DatasetRecipeManager({
    required this.main,
    required this.suggested,
    required this.trending,
  });

  factory DatasetRecipeManager.fromJson(Map<String, dynamic> json) =>
      _$DatasetRecipeManagerFromJson(json);

  Map<String, dynamic> toJson() => _$DatasetRecipeManagerToJson(this);
}
