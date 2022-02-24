// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_dataset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideosDataset _$VideosDatasetFromJson(Map<String, dynamic> json) =>
    VideosDataset(
      entries: (json['entries'] as List<dynamic>)
          .map((e) => VideoEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideosDatasetToJson(VideosDataset instance) =>
    <String, dynamic>{
      'entries': instance.entries,
    };
