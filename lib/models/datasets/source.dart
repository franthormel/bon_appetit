import 'package:json_annotation/json_annotation.dart';

part 'source.g.dart';

@JsonSerializable()
class DatasetSource {
  final List<String> recipes;

  final List<String> articles;

  final List<String> videos;

  DatasetSource({
    required this.articles,
    required this.recipes,
    required this.videos,
  });

  factory DatasetSource.fromJson(Map<String, dynamic> json) =>
      _$DatasetSourceFromJson(json);

  Map<String, dynamic> toJson() => _$DatasetSourceToJson(this);
}
