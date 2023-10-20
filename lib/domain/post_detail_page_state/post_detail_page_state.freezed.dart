// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostDetailPageStateData {
  List<CommentModel> get comments => throw _privateConstructorUsedError;
  bool get hasLoadingError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostDetailPageStateDataCopyWith<PostDetailPageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailPageStateDataCopyWith<$Res> {
  factory $PostDetailPageStateDataCopyWith(PostDetailPageStateData value,
          $Res Function(PostDetailPageStateData) then) =
      _$PostDetailPageStateDataCopyWithImpl<$Res, PostDetailPageStateData>;
  @useResult
  $Res call(
      {List<CommentModel> comments, bool hasLoadingError, bool isLoading});
}

/// @nodoc
class _$PostDetailPageStateDataCopyWithImpl<$Res,
        $Val extends PostDetailPageStateData>
    implements $PostDetailPageStateDataCopyWith<$Res> {
  _$PostDetailPageStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
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
abstract class _$$PostDetailPageStateDataImplCopyWith<$Res>
    implements $PostDetailPageStateDataCopyWith<$Res> {
  factory _$$PostDetailPageStateDataImplCopyWith(
          _$PostDetailPageStateDataImpl value,
          $Res Function(_$PostDetailPageStateDataImpl) then) =
      __$$PostDetailPageStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CommentModel> comments, bool hasLoadingError, bool isLoading});
}

/// @nodoc
class __$$PostDetailPageStateDataImplCopyWithImpl<$Res>
    extends _$PostDetailPageStateDataCopyWithImpl<$Res,
        _$PostDetailPageStateDataImpl>
    implements _$$PostDetailPageStateDataImplCopyWith<$Res> {
  __$$PostDetailPageStateDataImplCopyWithImpl(
      _$PostDetailPageStateDataImpl _value,
      $Res Function(_$PostDetailPageStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_$PostDetailPageStateDataImpl(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
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

class _$PostDetailPageStateDataImpl implements _PostDetailPageStateData {
  const _$PostDetailPageStateDataImpl(
      {required final List<CommentModel> comments,
      this.hasLoadingError = false,
      this.isLoading = true})
      : _comments = comments;

  final List<CommentModel> _comments;
  @override
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final bool hasLoadingError;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PostDetailPageStateData(comments: $comments, hasLoadingError: $hasLoadingError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailPageStateDataImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comments),
      hasLoadingError,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailPageStateDataImplCopyWith<_$PostDetailPageStateDataImpl>
      get copyWith => __$$PostDetailPageStateDataImplCopyWithImpl<
          _$PostDetailPageStateDataImpl>(this, _$identity);
}

abstract class _PostDetailPageStateData implements PostDetailPageStateData {
  const factory _PostDetailPageStateData(
      {required final List<CommentModel> comments,
      final bool hasLoadingError,
      final bool isLoading}) = _$PostDetailPageStateDataImpl;

  @override
  List<CommentModel> get comments;
  @override
  bool get hasLoadingError;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$PostDetailPageStateDataImplCopyWith<_$PostDetailPageStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
