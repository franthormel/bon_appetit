import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable()
class Video {
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

  // TODO: Place in a mixin with Article and Recipe
  String get heroTag => ObjectKey(this).toString();

  // TODO: Place in a mixin with Article and Recipe
  int compareDateUploadedTo(Video other) =>
      other.dateUploaded.compareTo(dateUploaded);
}
