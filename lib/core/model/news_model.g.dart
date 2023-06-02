// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      id: json['id'] as String,
      content: json['content'] as String,
      author: json['author'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'author': instance.author,
      'imageUrl': instance.imageUrl,
    };
