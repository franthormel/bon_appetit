import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable()
class VideoEntry {
  final String? series;
  final String imageUrl;
  final String title;
  final DateTime uploadDate;

  VideoEntry({
    required this.imageUrl,
    required this.title,
    required this.uploadDate,
    this.series,
  });

  factory VideoEntry.fromJson(Map<String, dynamic> json) =>
      _$VideoEntryFromJson(json);

  Map<String, dynamic> toJson() => _$VideoEntryToJson(this);
}
