// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoEntry _$VideoEntryFromJson(Map<String, dynamic> json) => VideoEntry(
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      uploadDate: DateTime.parse(json['uploadDate'] as String),
      series: json['series'] as String?,
    );

Map<String, dynamic> _$VideoEntryToJson(VideoEntry instance) =>
    <String, dynamic>{
      'title': instance.title,
      'series': instance.series,
      'imageUrl': instance.imageUrl,
      'uploadDate': instance.uploadDate.toIso8601String(),
    };