// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) => Video(
      about: json['about'] as String,
      id: json['id'] as String,
      dateUploaded: DateTime.parse(json['dateUploaded'] as String),
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      transcript: json['transcript'] as String,
      credits:
          (json['credits'] as List<dynamic>?)?.map((e) => e as String).toList(),
      episode: json['episode'] as String?,
      season: json['season'] as String?,
      series: json['series'] as String?,
    );

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'about': instance.about,
      'credits': instance.credits,
      'dateUploaded': instance.dateUploaded.toIso8601String(),
      'episode': instance.episode,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'season': instance.season,
      'series': instance.series,
      'title': instance.title,
      'transcript': instance.transcript,
    };
