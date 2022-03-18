import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable()
class VideoEntry {
  final String about;
  final List<String>? credits;
  final String? episode;
  final String imageUrl;
  final String? season;
  final String? series;
  final String title;
  final String transcript;
  final DateTime uploadDate;

  VideoEntry({
    required this.about,
    required this.imageUrl,
    required this.title,
    required this.transcript,
    required this.uploadDate,
    this.credits,
    this.episode,
    this.season,
    this.series,
  });

  factory VideoEntry.fromJson(Map<String, dynamic> json) =>
      _$VideoEntryFromJson(json);

  Map<String, dynamic> toJson() => _$VideoEntryToJson(this);

  String get heroTag => ValueKey(title).toString();
}
