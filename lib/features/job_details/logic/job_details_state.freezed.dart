// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobDetailsResponseBody data) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsError value) jobDetailsError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsError value)? jobDetailsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsError value)? jobDetailsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailsStateCopyWith<$Res> {
  factory $JobDetailsStateCopyWith(
          JobDetailsState value, $Res Function(JobDetailsState) then) =
      _$JobDetailsStateCopyWithImpl<$Res, JobDetailsState>;
}

/// @nodoc
class _$JobDetailsStateCopyWithImpl<$Res, $Val extends JobDetailsState>
    implements $JobDetailsStateCopyWith<$Res> {
  _$JobDetailsStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$JobDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'JobDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobDetailsResponseBody data) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsError value) jobDetailsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsError value)? jobDetailsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsError value)? jobDetailsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JobDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$JobDetailsLoadingImplCopyWith<$Res> {
  factory _$$JobDetailsLoadingImplCopyWith(_$JobDetailsLoadingImpl value,
          $Res Function(_$JobDetailsLoadingImpl) then) =
      __$$JobDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JobDetailsLoadingImplCopyWithImpl<$Res>
    extends _$JobDetailsStateCopyWithImpl<$Res, _$JobDetailsLoadingImpl>
    implements _$$JobDetailsLoadingImplCopyWith<$Res> {
  __$$JobDetailsLoadingImplCopyWithImpl(_$JobDetailsLoadingImpl _value,
      $Res Function(_$JobDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$JobDetailsLoadingImpl implements JobDetailsLoading {
  const _$JobDetailsLoadingImpl();

  @override
  String toString() {
    return 'JobDetailsState.jobDetailsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JobDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobDetailsResponseBody data) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsError,
  }) {
    return jobDetailsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsError,
  }) {
    return jobDetailsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsError,
    required TResult orElse(),
  }) {
    if (jobDetailsLoading != null) {
      return jobDetailsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsError value) jobDetailsError,
  }) {
    return jobDetailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsError value)? jobDetailsError,
  }) {
    return jobDetailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsError value)? jobDetailsError,
    required TResult orElse(),
  }) {
    if (jobDetailsLoading != null) {
      return jobDetailsLoading(this);
    }
    return orElse();
  }
}

abstract class JobDetailsLoading implements JobDetailsState {
  const factory JobDetailsLoading() = _$JobDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$JobDetailsSuccessImplCopyWith<$Res> {
  factory _$$JobDetailsSuccessImplCopyWith(_$JobDetailsSuccessImpl value,
          $Res Function(_$JobDetailsSuccessImpl) then) =
      __$$JobDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JobDetailsResponseBody data});
}

/// @nodoc
class __$$JobDetailsSuccessImplCopyWithImpl<$Res>
    extends _$JobDetailsStateCopyWithImpl<$Res, _$JobDetailsSuccessImpl>
    implements _$$JobDetailsSuccessImplCopyWith<$Res> {
  __$$JobDetailsSuccessImplCopyWithImpl(_$JobDetailsSuccessImpl _value,
      $Res Function(_$JobDetailsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$JobDetailsSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as JobDetailsResponseBody,
    ));
  }
}

/// @nodoc

class _$JobDetailsSuccessImpl implements JobDetailsSuccess {
  const _$JobDetailsSuccessImpl(this.data);

  @override
  final JobDetailsResponseBody data;

  @override
  String toString() {
    return 'JobDetailsState.jobDetailsSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailsSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDetailsSuccessImplCopyWith<_$JobDetailsSuccessImpl> get copyWith =>
      __$$JobDetailsSuccessImplCopyWithImpl<_$JobDetailsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobDetailsResponseBody data) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsError,
  }) {
    return jobDetailsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsError,
  }) {
    return jobDetailsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsError,
    required TResult orElse(),
  }) {
    if (jobDetailsSuccess != null) {
      return jobDetailsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsError value) jobDetailsError,
  }) {
    return jobDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsError value)? jobDetailsError,
  }) {
    return jobDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsError value)? jobDetailsError,
    required TResult orElse(),
  }) {
    if (jobDetailsSuccess != null) {
      return jobDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class JobDetailsSuccess implements JobDetailsState {
  const factory JobDetailsSuccess(final JobDetailsResponseBody data) =
      _$JobDetailsSuccessImpl;

  JobDetailsResponseBody get data;

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobDetailsSuccessImplCopyWith<_$JobDetailsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobDetailsErrorImplCopyWith<$Res> {
  factory _$$JobDetailsErrorImplCopyWith(_$JobDetailsErrorImpl value,
          $Res Function(_$JobDetailsErrorImpl) then) =
      __$$JobDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$JobDetailsErrorImplCopyWithImpl<$Res>
    extends _$JobDetailsStateCopyWithImpl<$Res, _$JobDetailsErrorImpl>
    implements _$$JobDetailsErrorImplCopyWith<$Res> {
  __$$JobDetailsErrorImplCopyWithImpl(
      _$JobDetailsErrorImpl _value, $Res Function(_$JobDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$JobDetailsErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JobDetailsErrorImpl implements JobDetailsError {
  const _$JobDetailsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'JobDetailsState.jobDetailsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDetailsErrorImplCopyWith<_$JobDetailsErrorImpl> get copyWith =>
      __$$JobDetailsErrorImplCopyWithImpl<_$JobDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() jobDetailsLoading,
    required TResult Function(JobDetailsResponseBody data) jobDetailsSuccess,
    required TResult Function(String error) jobDetailsError,
  }) {
    return jobDetailsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? jobDetailsLoading,
    TResult? Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult? Function(String error)? jobDetailsError,
  }) {
    return jobDetailsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? jobDetailsLoading,
    TResult Function(JobDetailsResponseBody data)? jobDetailsSuccess,
    TResult Function(String error)? jobDetailsError,
    required TResult orElse(),
  }) {
    if (jobDetailsError != null) {
      return jobDetailsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(JobDetailsLoading value) jobDetailsLoading,
    required TResult Function(JobDetailsSuccess value) jobDetailsSuccess,
    required TResult Function(JobDetailsError value) jobDetailsError,
  }) {
    return jobDetailsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult? Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult? Function(JobDetailsError value)? jobDetailsError,
  }) {
    return jobDetailsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(JobDetailsLoading value)? jobDetailsLoading,
    TResult Function(JobDetailsSuccess value)? jobDetailsSuccess,
    TResult Function(JobDetailsError value)? jobDetailsError,
    required TResult orElse(),
  }) {
    if (jobDetailsError != null) {
      return jobDetailsError(this);
    }
    return orElse();
  }
}

abstract class JobDetailsError implements JobDetailsState {
  const factory JobDetailsError({required final String error}) =
      _$JobDetailsErrorImpl;

  String get error;

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobDetailsErrorImplCopyWith<_$JobDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
