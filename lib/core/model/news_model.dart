// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class News with _$News {
  const factory News({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'author') required String author,
    @JsonKey(name: 'imageUrl') required String imageUrl,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) =>
      _$NewsFromJson(json);

  const News._();

  static const empty = News(
    id: '',
    content: '',
    author: '',
    imageUrl: '',
  );

  bool get isEmpty => this == empty;
  bool get isNotEmpty => this != empty;
}
