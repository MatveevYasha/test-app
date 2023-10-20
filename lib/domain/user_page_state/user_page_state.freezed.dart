// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserPageStateData {
  List<PostModel> get posts => throw _privateConstructorUsedError;
  List<AlbumModelWithPhotos> get albums => throw _privateConstructorUsedError;
  bool get hasLoadingError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPageStateDataCopyWith<UserPageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPageStateDataCopyWith<$Res> {
  factory $UserPageStateDataCopyWith(
          UserPageStateData value, $Res Function(UserPageStateData) then) =
      _$UserPageStateDataCopyWithImpl<$Res, UserPageStateData>;
  @useResult
  $Res call(
      {List<PostModel> posts,
      List<AlbumModelWithPhotos> albums,
      bool hasLoadingError,
      bool isLoading});
}

/// @nodoc
class _$UserPageStateDataCopyWithImpl<$Res, $Val extends UserPageStateData>
    implements $UserPageStateDataCopyWith<$Res> {
  _$UserPageStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? albums = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AlbumModelWithPhotos>,
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPageStateDataImplCopyWith<$Res>
    implements $UserPageStateDataCopyWith<$Res> {
  factory _$$UserPageStateDataImplCopyWith(_$UserPageStateDataImpl value,
          $Res Function(_$UserPageStateDataImpl) then) =
      __$$UserPageStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PostModel> posts,
      List<AlbumModelWithPhotos> albums,
      bool hasLoadingError,
      bool isLoading});
}

/// @nodoc
class __$$UserPageStateDataImplCopyWithImpl<$Res>
    extends _$UserPageStateDataCopyWithImpl<$Res, _$UserPageStateDataImpl>
    implements _$$UserPageStateDataImplCopyWith<$Res> {
  __$$UserPageStateDataImplCopyWithImpl(_$UserPageStateDataImpl _value,
      $Res Function(_$UserPageStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? albums = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_$UserPageStateDataImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AlbumModelWithPhotos>,
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserPageStateDataImpl implements _UserPageStateData {
  const _$UserPageStateDataImpl(
      {required final List<PostModel> posts,
      required final List<AlbumModelWithPhotos> albums,
      this.hasLoadingError = false,
      this.isLoading = true})
      : _posts = posts,
        _albums = albums;

  final List<PostModel> _posts;
  @override
  List<PostModel> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  final List<AlbumModelWithPhotos> _albums;
  @override
  List<AlbumModelWithPhotos> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  @JsonKey()
  final bool hasLoadingError;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'UserPageStateData(posts: $posts, albums: $albums, hasLoadingError: $hasLoadingError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPageStateDataImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(_albums),
      hasLoadingError,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPageStateDataImplCopyWith<_$UserPageStateDataImpl> get copyWith =>
      __$$UserPageStateDataImplCopyWithImpl<_$UserPageStateDataImpl>(
          this, _$identity);
}

abstract class _UserPageStateData implements UserPageStateData {
  const factory _UserPageStateData(
      {required final List<PostModel> posts,
      required final List<AlbumModelWithPhotos> albums,
      final bool hasLoadingError,
      final bool isLoading}) = _$UserPageStateDataImpl;

  @override
  List<PostModel> get posts;
  @override
  List<AlbumModelWithPhotos> get albums;
  @override
  bool get hasLoadingError;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$UserPageStateDataImplCopyWith<_$UserPageStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
