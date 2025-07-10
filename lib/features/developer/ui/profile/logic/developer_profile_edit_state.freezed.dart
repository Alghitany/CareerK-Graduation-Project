// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'developer_profile_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeveloperProfileEditState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editProfileLoading,
    required TResult Function(T data) editProfileSuccess,
    required TResult Function(String error) editProfileError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editProfileLoading,
    TResult? Function(T data)? editProfileSuccess,
    TResult? Function(String error)? editProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfileLoading,
    TResult Function(T data)? editProfileSuccess,
    TResult Function(String error)? editProfileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(EditProfileLoading<T> value) editProfileLoading,
    required TResult Function(EditProfileSuccess<T> value) editProfileSuccess,
    required TResult Function(EditProfileError<T> value) editProfileError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult? Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult? Function(EditProfileError<T> value)? editProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult Function(EditProfileError<T> value)? editProfileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperProfileEditStateCopyWith<T, $Res> {
  factory $DeveloperProfileEditStateCopyWith(DeveloperProfileEditState<T> value,
          $Res Function(DeveloperProfileEditState<T>) then) =
      _$DeveloperProfileEditStateCopyWithImpl<T, $Res,
          DeveloperProfileEditState<T>>;
}

/// @nodoc
class _$DeveloperProfileEditStateCopyWithImpl<T, $Res,
        $Val extends DeveloperProfileEditState<T>>
    implements $DeveloperProfileEditStateCopyWith<T, $Res> {
  _$DeveloperProfileEditStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeveloperProfileEditState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$DeveloperProfileEditStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperProfileEditState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DeveloperProfileEditState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editProfileLoading,
    required TResult Function(T data) editProfileSuccess,
    required TResult Function(String error) editProfileError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editProfileLoading,
    TResult? Function(T data)? editProfileSuccess,
    TResult? Function(String error)? editProfileError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfileLoading,
    TResult Function(T data)? editProfileSuccess,
    TResult Function(String error)? editProfileError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(EditProfileLoading<T> value) editProfileLoading,
    required TResult Function(EditProfileSuccess<T> value) editProfileSuccess,
    required TResult Function(EditProfileError<T> value) editProfileError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult? Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult? Function(EditProfileError<T> value)? editProfileError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult Function(EditProfileError<T> value)? editProfileError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements DeveloperProfileEditState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$EditProfileLoadingImplCopyWith<T, $Res> {
  factory _$$EditProfileLoadingImplCopyWith(_$EditProfileLoadingImpl<T> value,
          $Res Function(_$EditProfileLoadingImpl<T>) then) =
      __$$EditProfileLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EditProfileLoadingImplCopyWithImpl<T, $Res>
    extends _$DeveloperProfileEditStateCopyWithImpl<T, $Res,
        _$EditProfileLoadingImpl<T>>
    implements _$$EditProfileLoadingImplCopyWith<T, $Res> {
  __$$EditProfileLoadingImplCopyWithImpl(_$EditProfileLoadingImpl<T> _value,
      $Res Function(_$EditProfileLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperProfileEditState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditProfileLoadingImpl<T> implements EditProfileLoading<T> {
  const _$EditProfileLoadingImpl();

  @override
  String toString() {
    return 'DeveloperProfileEditState<$T>.editProfileLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editProfileLoading,
    required TResult Function(T data) editProfileSuccess,
    required TResult Function(String error) editProfileError,
  }) {
    return editProfileLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editProfileLoading,
    TResult? Function(T data)? editProfileSuccess,
    TResult? Function(String error)? editProfileError,
  }) {
    return editProfileLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfileLoading,
    TResult Function(T data)? editProfileSuccess,
    TResult Function(String error)? editProfileError,
    required TResult orElse(),
  }) {
    if (editProfileLoading != null) {
      return editProfileLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(EditProfileLoading<T> value) editProfileLoading,
    required TResult Function(EditProfileSuccess<T> value) editProfileSuccess,
    required TResult Function(EditProfileError<T> value) editProfileError,
  }) {
    return editProfileLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult? Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult? Function(EditProfileError<T> value)? editProfileError,
  }) {
    return editProfileLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult Function(EditProfileError<T> value)? editProfileError,
    required TResult orElse(),
  }) {
    if (editProfileLoading != null) {
      return editProfileLoading(this);
    }
    return orElse();
  }
}

abstract class EditProfileLoading<T> implements DeveloperProfileEditState<T> {
  const factory EditProfileLoading() = _$EditProfileLoadingImpl<T>;
}

/// @nodoc
abstract class _$$EditProfileSuccessImplCopyWith<T, $Res> {
  factory _$$EditProfileSuccessImplCopyWith(_$EditProfileSuccessImpl<T> value,
          $Res Function(_$EditProfileSuccessImpl<T>) then) =
      __$$EditProfileSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$EditProfileSuccessImplCopyWithImpl<T, $Res>
    extends _$DeveloperProfileEditStateCopyWithImpl<T, $Res,
        _$EditProfileSuccessImpl<T>>
    implements _$$EditProfileSuccessImplCopyWith<T, $Res> {
  __$$EditProfileSuccessImplCopyWithImpl(_$EditProfileSuccessImpl<T> _value,
      $Res Function(_$EditProfileSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$EditProfileSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EditProfileSuccessImpl<T> implements EditProfileSuccess<T> {
  const _$EditProfileSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DeveloperProfileEditState<$T>.editProfileSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of DeveloperProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileSuccessImplCopyWith<T, _$EditProfileSuccessImpl<T>>
      get copyWith => __$$EditProfileSuccessImplCopyWithImpl<T,
          _$EditProfileSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editProfileLoading,
    required TResult Function(T data) editProfileSuccess,
    required TResult Function(String error) editProfileError,
  }) {
    return editProfileSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editProfileLoading,
    TResult? Function(T data)? editProfileSuccess,
    TResult? Function(String error)? editProfileError,
  }) {
    return editProfileSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfileLoading,
    TResult Function(T data)? editProfileSuccess,
    TResult Function(String error)? editProfileError,
    required TResult orElse(),
  }) {
    if (editProfileSuccess != null) {
      return editProfileSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(EditProfileLoading<T> value) editProfileLoading,
    required TResult Function(EditProfileSuccess<T> value) editProfileSuccess,
    required TResult Function(EditProfileError<T> value) editProfileError,
  }) {
    return editProfileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult? Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult? Function(EditProfileError<T> value)? editProfileError,
  }) {
    return editProfileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult Function(EditProfileError<T> value)? editProfileError,
    required TResult orElse(),
  }) {
    if (editProfileSuccess != null) {
      return editProfileSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProfileSuccess<T> implements DeveloperProfileEditState<T> {
  const factory EditProfileSuccess(final T data) = _$EditProfileSuccessImpl<T>;

  T get data;

  /// Create a copy of DeveloperProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfileSuccessImplCopyWith<T, _$EditProfileSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileErrorImplCopyWith<T, $Res> {
  factory _$$EditProfileErrorImplCopyWith(_$EditProfileErrorImpl<T> value,
          $Res Function(_$EditProfileErrorImpl<T>) then) =
      __$$EditProfileErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$EditProfileErrorImplCopyWithImpl<T, $Res>
    extends _$DeveloperProfileEditStateCopyWithImpl<T, $Res,
        _$EditProfileErrorImpl<T>>
    implements _$$EditProfileErrorImplCopyWith<T, $Res> {
  __$$EditProfileErrorImplCopyWithImpl(_$EditProfileErrorImpl<T> _value,
      $Res Function(_$EditProfileErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EditProfileErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditProfileErrorImpl<T> implements EditProfileError<T> {
  const _$EditProfileErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DeveloperProfileEditState<$T>.editProfileError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DeveloperProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileErrorImplCopyWith<T, _$EditProfileErrorImpl<T>> get copyWith =>
      __$$EditProfileErrorImplCopyWithImpl<T, _$EditProfileErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editProfileLoading,
    required TResult Function(T data) editProfileSuccess,
    required TResult Function(String error) editProfileError,
  }) {
    return editProfileError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editProfileLoading,
    TResult? Function(T data)? editProfileSuccess,
    TResult? Function(String error)? editProfileError,
  }) {
    return editProfileError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfileLoading,
    TResult Function(T data)? editProfileSuccess,
    TResult Function(String error)? editProfileError,
    required TResult orElse(),
  }) {
    if (editProfileError != null) {
      return editProfileError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(EditProfileLoading<T> value) editProfileLoading,
    required TResult Function(EditProfileSuccess<T> value) editProfileSuccess,
    required TResult Function(EditProfileError<T> value) editProfileError,
  }) {
    return editProfileError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult? Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult? Function(EditProfileError<T> value)? editProfileError,
  }) {
    return editProfileError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(EditProfileLoading<T> value)? editProfileLoading,
    TResult Function(EditProfileSuccess<T> value)? editProfileSuccess,
    TResult Function(EditProfileError<T> value)? editProfileError,
    required TResult orElse(),
  }) {
    if (editProfileError != null) {
      return editProfileError(this);
    }
    return orElse();
  }
}

abstract class EditProfileError<T> implements DeveloperProfileEditState<T> {
  const factory EditProfileError({required final String error}) =
      _$EditProfileErrorImpl<T>;

  String get error;

  /// Create a copy of DeveloperProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfileErrorImplCopyWith<T, _$EditProfileErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
