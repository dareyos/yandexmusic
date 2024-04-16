// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MusicInfoImpl _$$MusicInfoImplFromJson(Map<String, dynamic> json) =>
    _$MusicInfoImpl(
      name: json['name'] as String,
      author: json['author'] as String,
      url: json['url'] as String,
      imageUrl: json['imageUrl'] as String? ?? null,
    );

Map<String, dynamic> _$$MusicInfoImplToJson(_$MusicInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'author': instance.author,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
    };
