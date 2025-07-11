// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'developer_courses_roadmaps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeveloperCoursesRoadmapsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<DeveloperCoursesRoadmapsResponseBody> roadmaps)
        success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeveloperCoursesRoadmapsLoading value) loading,
    required TResult Function(DeveloperCoursesRoadmapsSuccess value) success,
    required TResult Function(DeveloperCoursesRoadmapsError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult? Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult? Function(DeveloperCoursesRoadmapsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult Function(DeveloperCoursesRoadmapsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperCoursesRoadmapsStateCopyWith<$Res> {
  factory $DeveloperCoursesRoadmapsStateCopyWith(
          DeveloperCoursesRoadmapsState value,
          $Res Function(DeveloperCoursesRoadmapsState) then) =
      _$DeveloperCoursesRoadmapsStateCopyWithImpl<$Res,
          DeveloperCoursesRoadmapsState>;
}

/// @nodoc
class _$DeveloperCoursesRoadmapsStateCopyWithImpl<$Res,
        $Val extends DeveloperCoursesRoadmapsState>
    implements $DeveloperCoursesRoadmapsStateCopyWith<$Res> {
  _$DeveloperCoursesRoadmapsStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeveloperCoursesRoadmapsState
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
    extends _$DeveloperCoursesRoadmapsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperCoursesRoadmapsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DeveloperCoursesRoadmapsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(
            List<DeveloperCoursesRoadmapsResponseBody> roadmaps)
        success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult Function(ErrorHandler errorHandler)? error,
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
    required TResult Function(DeveloperCoursesRoadmapsLoading value) loading,
    required TResult Function(DeveloperCoursesRoadmapsSuccess value) success,
    required TResult Function(DeveloperCoursesRoadmapsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult? Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult? Function(DeveloperCoursesRoadmapsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult Function(DeveloperCoursesRoadmapsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeveloperCoursesRoadmapsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DeveloperCoursesRoadmapsLoadingImplCopyWith<$Res> {
  factory _$$DeveloperCoursesRoadmapsLoadingImplCopyWith(
          _$DeveloperCoursesRoadmapsLoadingImpl value,
          $Res Function(_$DeveloperCoursesRoadmapsLoadingImpl) then) =
      __$$DeveloperCoursesRoadmapsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeveloperCoursesRoadmapsLoadingImplCopyWithImpl<$Res>
    extends _$DeveloperCoursesRoadmapsStateCopyWithImpl<$Res,
        _$DeveloperCoursesRoadmapsLoadingImpl>
    implements _$$DeveloperCoursesRoadmapsLoadingImplCopyWith<$Res> {
  __$$DeveloperCoursesRoadmapsLoadingImplCopyWithImpl(
      _$DeveloperCoursesRoadmapsLoadingImpl _value,
      $Res Function(_$DeveloperCoursesRoadmapsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperCoursesRoadmapsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeveloperCoursesRoadmapsLoadingImpl
    implements DeveloperCoursesRoadmapsLoading {
  const _$DeveloperCoursesRoadmapsLoadingImpl();

  @override
  String toString() {
    return 'DeveloperCoursesRoadmapsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeveloperCoursesRoadmapsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<DeveloperCoursesRoadmapsResponseBody> roadmaps)
        success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult Function(ErrorHandler errorHandler)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(DeveloperCoursesRoadmapsLoading value) loading,
    required TResult Function(DeveloperCoursesRoadmapsSuccess value) success,
    required TResult Function(DeveloperCoursesRoadmapsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult? Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult? Function(DeveloperCoursesRoadmapsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult Function(DeveloperCoursesRoadmapsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeveloperCoursesRoadmapsLoading
    implements DeveloperCoursesRoadmapsState {
  const factory DeveloperCoursesRoadmapsLoading() =
      _$DeveloperCoursesRoadmapsLoadingImpl;
}

/// @nodoc
abstract class _$$DeveloperCoursesRoadmapsSuccessImplCopyWith<$Res> {
  factory _$$DeveloperCoursesRoadmapsSuccessImplCopyWith(
          _$DeveloperCoursesRoadmapsSuccessImpl value,
          $Res Function(_$DeveloperCoursesRoadmapsSuccessImpl) then) =
      __$$DeveloperCoursesRoadmapsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DeveloperCoursesRoadmapsResponseBody> roadmaps});
}

/// @nodoc
class __$$DeveloperCoursesRoadmapsSuccessImplCopyWithImpl<$Res>
    extends _$DeveloperCoursesRoadmapsStateCopyWithImpl<$Res,
        _$DeveloperCoursesRoadmapsSuccessImpl>
    implements _$$DeveloperCoursesRoadmapsSuccessImplCopyWith<$Res> {
  __$$DeveloperCoursesRoadmapsSuccessImplCopyWithImpl(
      _$DeveloperCoursesRoadmapsSuccessImpl _value,
      $Res Function(_$DeveloperCoursesRoadmapsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperCoursesRoadmapsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roadmaps = null,
  }) {
    return _then(_$DeveloperCoursesRoadmapsSuccessImpl(
      null == roadmaps
          ? _value._roadmaps
          : roadmaps // ignore: cast_nullable_to_non_nullable
              as List<DeveloperCoursesRoadmapsResponseBody>,
    ));
  }
}

/// @nodoc

class _$DeveloperCoursesRoadmapsSuccessImpl
    implements DeveloperCoursesRoadmapsSuccess {
  const _$DeveloperCoursesRoadmapsSuccessImpl(
      final List<DeveloperCoursesRoadmapsResponseBody> roadmaps)
      : _roadmaps = roadmaps;

  final List<DeveloperCoursesRoadmapsResponseBody> _roadmaps;
  @override
  List<DeveloperCoursesRoadmapsResponseBody> get roadmaps {
    if (_roadmaps is EqualUnmodifiableListView) return _roadmaps;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roadmaps);
  }

  @override
  String toString() {
    return 'DeveloperCoursesRoadmapsState.success(roadmaps: $roadmaps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeveloperCoursesRoadmapsSuccessImpl &&
            const DeepCollectionEquality().equals(other._roadmaps, _roadmaps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_roadmaps));

  /// Create a copy of DeveloperCoursesRoadmapsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeveloperCoursesRoadmapsSuccessImplCopyWith<
          _$DeveloperCoursesRoadmapsSuccessImpl>
      get copyWith => __$$DeveloperCoursesRoadmapsSuccessImplCopyWithImpl<
          _$DeveloperCoursesRoadmapsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<DeveloperCoursesRoadmapsResponseBody> roadmaps)
        success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return success(roadmaps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return success?.call(roadmaps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(roadmaps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeveloperCoursesRoadmapsLoading value) loading,
    required TResult Function(DeveloperCoursesRoadmapsSuccess value) success,
    required TResult Function(DeveloperCoursesRoadmapsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult? Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult? Function(DeveloperCoursesRoadmapsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult Function(DeveloperCoursesRoadmapsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DeveloperCoursesRoadmapsSuccess
    implements DeveloperCoursesRoadmapsState {
  const factory DeveloperCoursesRoadmapsSuccess(
          final List<DeveloperCoursesRoadmapsResponseBody> roadmaps) =
      _$DeveloperCoursesRoadmapsSuccessImpl;

  List<DeveloperCoursesRoadmapsResponseBody> get roadmaps;

  /// Create a copy of DeveloperCoursesRoadmapsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeveloperCoursesRoadmapsSuccessImplCopyWith<
          _$DeveloperCoursesRoadmapsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeveloperCoursesRoadmapsErrorImplCopyWith<$Res> {
  factory _$$DeveloperCoursesRoadmapsErrorImplCopyWith(
          _$DeveloperCoursesRoadmapsErrorImpl value,
          $Res Function(_$DeveloperCoursesRoadmapsErrorImpl) then) =
      __$$DeveloperCoursesRoadmapsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$DeveloperCoursesRoadmapsErrorImplCopyWithImpl<$Res>
    extends _$DeveloperCoursesRoadmapsStateCopyWithImpl<$Res,
        _$DeveloperCoursesRoadmapsErrorImpl>
    implements _$$DeveloperCoursesRoadmapsErrorImplCopyWith<$Res> {
  __$$DeveloperCoursesRoadmapsErrorImplCopyWithImpl(
      _$DeveloperCoursesRoadmapsErrorImpl _value,
      $Res Function(_$DeveloperCoursesRoadmapsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperCoursesRoadmapsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$DeveloperCoursesRoadmapsErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$DeveloperCoursesRoadmapsErrorImpl
    implements DeveloperCoursesRoadmapsError {
  const _$DeveloperCoursesRoadmapsErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'DeveloperCoursesRoadmapsState.error(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeveloperCoursesRoadmapsErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of DeveloperCoursesRoadmapsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeveloperCoursesRoadmapsErrorImplCopyWith<
          _$DeveloperCoursesRoadmapsErrorImpl>
      get copyWith => __$$DeveloperCoursesRoadmapsErrorImplCopyWithImpl<
          _$DeveloperCoursesRoadmapsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<DeveloperCoursesRoadmapsResponseBody> roadmaps)
        success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return error(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return error?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeveloperCoursesRoadmapsResponseBody> roadmaps)?
        success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeveloperCoursesRoadmapsLoading value) loading,
    required TResult Function(DeveloperCoursesRoadmapsSuccess value) success,
    required TResult Function(DeveloperCoursesRoadmapsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult? Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult? Function(DeveloperCoursesRoadmapsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeveloperCoursesRoadmapsLoading value)? loading,
    TResult Function(DeveloperCoursesRoadmapsSuccess value)? success,
    TResult Function(DeveloperCoursesRoadmapsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeveloperCoursesRoadmapsError
    implements DeveloperCoursesRoadmapsState {
  const factory DeveloperCoursesRoadmapsError(final ErrorHandler errorHandler) =
      _$DeveloperCoursesRoadmapsErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of DeveloperCoursesRoadmapsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeveloperCoursesRoadmapsErrorImplCopyWith<
          _$DeveloperCoursesRoadmapsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
