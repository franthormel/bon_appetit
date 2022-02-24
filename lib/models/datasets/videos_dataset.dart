import 'package:json_annotation/json_annotation.dart';

import '../videos/video.dart';

part 'videos_dataset.g.dart';

@JsonSerializable()
class VideosDataset {
  final List<VideoEntry> entries;

  VideosDataset({required this.entries});

  factory VideosDataset.fromJson(Map<String, dynamic> json) =>
      _$VideosDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$VideosDatasetToJson(this);
}
