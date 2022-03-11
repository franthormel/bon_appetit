import 'package:json_annotation/json_annotation.dart';

part 'image_credits.g.dart';

/// Contains the recipe's author, photographer(s) and if available food stylist(s) and/or prop stylist(s)
@JsonSerializable()
class ImageCredits {
  final String author;
  final List<String> photographers;
  final List<String>? foodStylists;
  final List<String>? propStylists;

  const ImageCredits({
    required this.author,
    required this.photographers,
    this.foodStylists,
    this.propStylists,
  });

  factory ImageCredits.fromJson(Map<String, dynamic> json) =>
      _$ImageCreditsFromJson(json);

  Map<String, dynamic> toJson() => _$ImageCreditsToJson(this);
}
