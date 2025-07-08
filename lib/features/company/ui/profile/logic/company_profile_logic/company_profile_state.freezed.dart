// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompanyProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CompanyProfileResponseBody profile) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CompanyProfileResponseBody profile)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CompanyProfileResponseBody profile)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompanyProfileInitial value) initial,
    required TResult Function(CompanyProfileLoading value) loading,
    required TResult Function(CompanyProfileSuccess value) success,
    required TResult Function(CompanyProfileError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompanyProfileInitial value)? initial,
    TResult? Function(CompanyProfileLoading value)? loading,
    TResult? Function(CompanyProfileSuccess value)? success,
    TResult? Function(CompanyProfileError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompanyProfileInitial value)? initial,
    TResult Function(CompanyProfileLoading value)? loading,
    TResult Function(CompanyProfileSuccess value)? success,
    TResult Function(CompanyProfileError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyProfileStateCopyWith<$Res> {
  factory $CompanyProfileStateCopyWith(
          CompanyProfileState value, $Res Function(CompanyProfileState) then) =
      _$CompanyProfileStateCopyWithImpl<$Res, CompanyProfileState>;
}

/// @nodoc
class _$CompanyProfileStateCopyWithImpl<$Res, $Val extends CompanyProfileState>
    implements $CompanyProfileStateCopyWith<$Res> {
  _$CompanyProfileStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CompanyProfileInitialImplCopyWith<$Res> {
  factory _$$CompanyProfileInitialImplCopyWith(
          _$CompanyProfileInitialImpl value,
          $Res Function(_$CompanyProfileInitialImpl) then) =
      __$$CompanyProfileInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompanyProfileInitialImplCopyWithImpl<$Res>
    extends _$CompanyProfileStateCopyWithImpl<$Res, _$CompanyProfileInitialImpl>
    implements _$$CompanyProfileInitialImplCopyWith<$Res> {
  __$$CompanyProfileInitialImplCopyWithImpl(_$CompanyProfileInitialImpl _value,
      $Res Function(_$CompanyProfileInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompanyProfileInitialImpl implements _CompanyProfileInitial {
  const _$CompanyProfileInitialImpl();

  @override
  String toString() {
    return 'CompanyProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyProfileInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CompanyProfileResponseBody profile) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CompanyProfileResponseBody profile)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CompanyProfileResponseBody profile)? success,
    TResult Function(String error)? error,
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
    required TResult Function(_CompanyProfileInitial value) initial,
    required TResult Function(CompanyProfileLoading value) loading,
    required TResult Function(CompanyProfileSuccess value) success,
    required TResult Function(CompanyProfileError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompanyProfileInitial value)? initial,
    TResult? Function(CompanyProfileLoading value)? loading,
    TResult? Function(CompanyProfileSuccess value)? success,
    TResult? Function(CompanyProfileError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompanyProfileInitial value)? initial,
    TResult Function(CompanyProfileLoading value)? loading,
    TResult Function(CompanyProfileSuccess value)? success,
    TResult Function(CompanyProfileError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CompanyProfileInitial implements CompanyProfileState {
  const factory _CompanyProfileInitial() = _$CompanyProfileInitialImpl;
}

/// @nodoc
abstract class _$$CompanyProfileLoadingImplCopyWith<$Res> {
  factory _$$CompanyProfileLoadingImplCopyWith(
          _$CompanyProfileLoadingImpl value,
          $Res Function(_$CompanyProfileLoadingImpl) then) =
      __$$CompanyProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompanyProfileLoadingImplCopyWithImpl<$Res>
    extends _$CompanyProfileStateCopyWithImpl<$Res, _$CompanyProfileLoadingImpl>
    implements _$$CompanyProfileLoadingImplCopyWith<$Res> {
  __$$CompanyProfileLoadingImplCopyWithImpl(_$CompanyProfileLoadingImpl _value,
      $Res Function(_$CompanyProfileLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompanyProfileLoadingImpl implements CompanyProfileLoading {
  const _$CompanyProfileLoadingImpl();

  @override
  String toString() {
    return 'CompanyProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CompanyProfileResponseBody profile) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CompanyProfileResponseBody profile)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CompanyProfileResponseBody profile)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompanyProfileInitial value) initial,
    required TResult Function(CompanyProfileLoading value) loading,
    required TResult Function(CompanyProfileSuccess value) success,
    required TResult Function(CompanyProfileError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompanyProfileInitial value)? initial,
    TResult? Function(CompanyProfileLoading value)? loading,
    TResult? Function(CompanyProfileSuccess value)? success,
    TResult? Function(CompanyProfileError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompanyProfileInitial value)? initial,
    TResult Function(CompanyProfileLoading value)? loading,
    TResult Function(CompanyProfileSuccess value)? success,
    TResult Function(CompanyProfileError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CompanyProfileLoading implements CompanyProfileState {
  const factory CompanyProfileLoading() = _$CompanyProfileLoadingImpl;
}

/// @nodoc
abstract class _$$CompanyProfileSuccessImplCopyWith<$Res> {
  factory _$$CompanyProfileSuccessImplCopyWith(
          _$CompanyProfileSuccessImpl value,
          $Res Function(_$CompanyProfileSuccessImpl) then) =
      __$$CompanyProfileSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CompanyProfileResponseBody profile});
}

/// @nodoc
class __$$CompanyProfileSuccessImplCopyWithImpl<$Res>
    extends _$CompanyProfileStateCopyWithImpl<$Res, _$CompanyProfileSuccessImpl>
    implements _$$CompanyProfileSuccessImplCopyWith<$Res> {
  __$$CompanyProfileSuccessImplCopyWithImpl(_$CompanyProfileSuccessImpl _value,
      $Res Function(_$CompanyProfileSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$CompanyProfileSuccessImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as CompanyProfileResponseBody,
    ));
  }
}

/// @nodoc

class _$CompanyProfileSuccessImpl implements CompanyProfileSuccess {
  const _$CompanyProfileSuccessImpl(this.profile);

  @override
  final CompanyProfileResponseBody profile;

  @override
  String toString() {
    return 'CompanyProfileState.success(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyProfileSuccessImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyProfileSuccessImplCopyWith<_$CompanyProfileSuccessImpl>
      get copyWith => __$$CompanyProfileSuccessImplCopyWithImpl<
          _$CompanyProfileSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CompanyProfileResponseBody profile) success,
    required TResult Function(String error) error,
  }) {
    return success(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CompanyProfileResponseBody profile)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CompanyProfileResponseBody profile)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompanyProfileInitial value) initial,
    required TResult Function(CompanyProfileLoading value) loading,
    required TResult Function(CompanyProfileSuccess value) success,
    required TResult Function(CompanyProfileError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompanyProfileInitial value)? initial,
    TResult? Function(CompanyProfileLoading value)? loading,
    TResult? Function(CompanyProfileSuccess value)? success,
    TResult? Function(CompanyProfileError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompanyProfileInitial value)? initial,
    TResult Function(CompanyProfileLoading value)? loading,
    TResult Function(CompanyProfileSuccess value)? success,
    TResult Function(CompanyProfileError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CompanyProfileSuccess implements CompanyProfileState {
  const factory CompanyProfileSuccess(
      final CompanyProfileResponseBody profile) = _$CompanyProfileSuccessImpl;

  CompanyProfileResponseBody get profile;

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyProfileSuccessImplCopyWith<_$CompanyProfileSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompanyProfileErrorImplCopyWith<$Res> {
  factory _$$CompanyProfileErrorImplCopyWith(_$CompanyProfileErrorImpl value,
          $Res Function(_$CompanyProfileErrorImpl) then) =
      __$$CompanyProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CompanyProfileErrorImplCopyWithImpl<$Res>
    extends _$CompanyProfileStateCopyWithImpl<$Res, _$CompanyProfileErrorImpl>
    implements _$$CompanyProfileErrorImplCopyWith<$Res> {
  __$$CompanyProfileErrorImplCopyWithImpl(_$CompanyProfileErrorImpl _value,
      $Res Function(_$CompanyProfileErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CompanyProfileErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompanyProfileErrorImpl implements CompanyProfileError {
  const _$CompanyProfileErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CompanyProfileState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyProfileErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyProfileErrorImplCopyWith<_$CompanyProfileErrorImpl> get copyWith =>
      __$$CompanyProfileErrorImplCopyWithImpl<_$CompanyProfileErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CompanyProfileResponseBody profile) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CompanyProfileResponseBody profile)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CompanyProfileResponseBody profile)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompanyProfileInitial value) initial,
    required TResult Function(CompanyProfileLoading value) loading,
    required TResult Function(CompanyProfileSuccess value) success,
    required TResult Function(CompanyProfileError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompanyProfileInitial value)? initial,
    TResult? Function(CompanyProfileLoading value)? loading,
    TResult? Function(CompanyProfileSuccess value)? success,
    TResult? Function(CompanyProfileError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompanyProfileInitial value)? initial,
    TResult Function(CompanyProfileLoading value)? loading,
    TResult Function(CompanyProfileSuccess value)? success,
    TResult Function(CompanyProfileError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CompanyProfileError implements CompanyProfileState {
  const factory CompanyProfileError({required final String error}) =
      _$CompanyProfileErrorImpl;

  String get error;

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyProfileErrorImplCopyWith<_$CompanyProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
