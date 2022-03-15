// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoEntry _$VideoEntryFromJson(Map<String, dynamic> json) => VideoEntry(
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      uploadDate: DateTime.parse(json['uploadDate'] as String),
      series: json['series'] as String?,
    );

Map<String, dynamic> _$VideoEntryToJson(VideoEntry instance) =>
    <String, dynamic>{
      'series': instance.series,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'uploadDate': instance.uploadDate.toIso8601String(),
    };
