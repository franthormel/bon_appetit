import 'package:json_annotation/json_annotation.dart';

import '../../services/index.dart';
import '../others/base_model_mixin.dart';

part 'video.g.dart';

@JsonSerializable()
class Video with BaseModelsMixin {
  final String about;
  final List<String>? credits;
  final DateTime dateUploaded;
  final String? episode;
  final String id;
  final String imageUrl;
  final String? season;
  final String? series;
  final String title;
  final String transcript;

  Video({
    required this.about,
    required this.id,
    required this.dateUploaded,
    required this.imageUrl,
    required this.title,
    required this.transcript,
    this.credits,
    this.episode,
    this.season,
    this.series,
  });

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);

  @override
  int compareDateTo(DateTime other) =>
      DateComparatorService.compare(dateUploaded, other);
}
