import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_info.freezed.dart';
part 'music_info.g.dart';

@freezed
class MusicInfo with _$MusicInfo {

  factory MusicInfo({
    required String name,
    required String author,
    required String url,
    @Default(null) String? imageUrl,
  }) = _MusicInfo;

  factory MusicInfo.fromJson(Map<String, dynamic> json) => _$MusicInfoFromJson(json);
}