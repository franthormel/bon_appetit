import 'package:json_annotation/json_annotation.dart';

part 'product_credits.g.dart';

@JsonSerializable()
class ProductCredits {
  final List<String> photographers;
  final List<String>? foodStylists;
  final List<String>? propStylists;

  const ProductCredits({
    required this.photographers,
    this.foodStylists,
    this.propStylists,
  });

  factory ProductCredits.fromJson(Map<String, dynamic> json) =>
      _$ProductCreditsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCreditsToJson(this);
}
