import 'package:json_annotation/json_annotation.dart';

part 'recipe_people.g.dart';

/// Contains the recipe's author, photographer(s) and if available food stylist(s) and/or prop stylist(s)
@JsonSerializable()
class RecipePeople {
  final String author;
  final List<String> photographers;
  final List<String>? foodStylists;
  final List<String>? propStylists;

  const RecipePeople({
    required this.author,
    required this.photographers,
    this.foodStylists,
    this.propStylists,
  });

  factory RecipePeople.fromJson(Map<String, dynamic> json) =>
      _$RecipePeopleFromJson(json);

  Map<String, dynamic> toJson() => _$RecipePeopleToJson(this);
}
