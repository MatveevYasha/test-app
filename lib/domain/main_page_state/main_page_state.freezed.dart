// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageStateData {
  List<UserModel> get users => throw _privateConstructorUsedError;
  bool get hasLoadingError =>
      throw _privateConstructorUsedError; // TODO: добавить сообщение об ошибке
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateDataCopyWith<MainPageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateDataCopyWith<$Res> {
  factory $MainPageStateDataCopyWith(
          MainPageStateData value, $Res Function(MainPageStateData) then) =
      _$MainPageStateDataCopyWithImpl<$Res, MainPageStateData>;
  @useResult
  $Res call({List<UserModel> users, bool hasLoadingError, bool isLoading});
}

/// @nodoc
class _$MainPageStateDataCopyWithImpl<$Res, $Val extends MainPageStateData>
    implements $MainPageStateDataCopyWith<$Res> {
  _$MainPageStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
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
abstract class _$$MainPageStateDataImplCopyWith<$Res>
    implements $MainPageStateDataCopyWith<$Res> {
  factory _$$MainPageStateDataImplCopyWith(_$MainPageStateDataImpl value,
          $Res Function(_$MainPageStateDataImpl) then) =
      __$$MainPageStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel> users, bool hasLoadingError, bool isLoading});
}

/// @nodoc
class __$$MainPageStateDataImplCopyWithImpl<$Res>
    extends _$MainPageStateDataCopyWithImpl<$Res, _$MainPageStateDataImpl>
    implements _$$MainPageStateDataImplCopyWith<$Res> {
  __$$MainPageStateDataImplCopyWithImpl(_$MainPageStateDataImpl _value,
      $Res Function(_$MainPageStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_$MainPageStateDataImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
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

class _$MainPageStateDataImpl implements _MainPageStateData {
  const _$MainPageStateDataImpl(
      {required final List<UserModel> users,
      this.hasLoadingError = false,
      this.isLoading = true})
      : _users = users;

  final List<UserModel> _users;
  @override
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final bool hasLoadingError;
// TODO: добавить сообщение об ошибке
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'MainPageStateData(users: $users, hasLoadingError: $hasLoadingError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPageStateDataImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_users), hasLoadingError, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainPageStateDataImplCopyWith<_$MainPageStateDataImpl> get copyWith =>
      __$$MainPageStateDataImplCopyWithImpl<_$MainPageStateDataImpl>(
          this, _$identity);
}

abstract class _MainPageStateData implements MainPageStateData {
  const factory _MainPageStateData(
      {required final List<UserModel> users,
      final bool hasLoadingError,
      final bool isLoading}) = _$MainPageStateDataImpl;

  @override
  List<UserModel> get users;
  @override
  bool get hasLoadingError;
  @override // TODO: добавить сообщение об ошибке
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$MainPageStateDataImplCopyWith<_$MainPageStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
