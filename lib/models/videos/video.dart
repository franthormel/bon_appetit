import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable()
class Video {
  final String about;
  final List<String>? credits;
  final String? episode;
  final String imageUrl;
  final String? season;
  final String? series;
  final String title;
  final String transcript;
  final DateTime uploadDate;

  Video({
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

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);

  String get heroTag => ObjectKey(this).toString();
}
