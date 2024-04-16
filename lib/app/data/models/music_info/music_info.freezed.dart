// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MusicInfo _$MusicInfoFromJson(Map<String, dynamic> json) {
  return _MusicInfo.fromJson(json);
}

/// @nodoc
mixin _$MusicInfo {
  String get name => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicInfoCopyWith<MusicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicInfoCopyWith<$Res> {
  factory $MusicInfoCopyWith(MusicInfo value, $Res Function(MusicInfo) then) =
      _$MusicInfoCopyWithImpl<$Res, MusicInfo>;
  @useResult
  $Res call({String name, String author, String url, String? imageUrl});
}

/// @nodoc
class _$MusicInfoCopyWithImpl<$Res, $Val extends MusicInfo>
    implements $MusicInfoCopyWith<$Res> {
  _$MusicInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? author = null,
    Object? url = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MusicInfoImplCopyWith<$Res>
    implements $MusicInfoCopyWith<$Res> {
  factory _$$MusicInfoImplCopyWith(
          _$MusicInfoImpl value, $Res Function(_$MusicInfoImpl) then) =
      __$$MusicInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String author, String url, String? imageUrl});
}

/// @nodoc
class __$$MusicInfoImplCopyWithImpl<$Res>
    extends _$MusicInfoCopyWithImpl<$Res, _$MusicInfoImpl>
    implements _$$MusicInfoImplCopyWith<$Res> {
  __$$MusicInfoImplCopyWithImpl(
      _$MusicInfoImpl _value, $Res Function(_$MusicInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? author = null,
    Object? url = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$MusicInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MusicInfoImpl implements _MusicInfo {
  _$MusicInfoImpl(
      {required this.name,
      required this.author,
      required this.url,
      this.imageUrl = null});

  factory _$MusicInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MusicInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String author;
  @override
  final String url;
  @override
  @JsonKey()
  final String? imageUrl;

  @override
  String toString() {
    return 'MusicInfo(name: $name, author: $author, url: $url, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, author, url, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicInfoImplCopyWith<_$MusicInfoImpl> get copyWith =>
      __$$MusicInfoImplCopyWithImpl<_$MusicInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MusicInfoImplToJson(
      this,
    );
  }
}

abstract class _MusicInfo implements MusicInfo {
  factory _MusicInfo(
      {required final String name,
      required final String author,
      required final String url,
      final String? imageUrl}) = _$MusicInfoImpl;

  factory _MusicInfo.fromJson(Map<String, dynamic> json) =
      _$MusicInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get author;
  @override
  String get url;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$MusicInfoImplCopyWith<_$MusicInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
