import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable()
class VideoEntry {
  final String about; // TODO:
  final List<String>? credits; // TODO:
  final String? episode; // TODO:
  final String imageUrl; // TODO:
  final String? season; // TODO:
  final String? series; // TODO:
  final String title;
  final String transcript; // TODO:
  final DateTime uploadDate; // TODO:

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

  String get heroTag => ObjectKey(this).toString();
}
