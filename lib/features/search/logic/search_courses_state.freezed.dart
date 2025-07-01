// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_courses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchCoursesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SearchCoursesResponseBody> courses) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SearchCoursesResponseBody> courses)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SearchCoursesResponseBody> courses)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchCoursesLoading value) loading,
    required TResult Function(SearchCoursesSuccess value) success,
    required TResult Function(SearchCoursesError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchCoursesLoading value)? loading,
    TResult? Function(SearchCoursesSuccess value)? success,
    TResult? Function(SearchCoursesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchCoursesLoading value)? loading,
    TResult Function(SearchCoursesSuccess value)? success,
    TResult Function(SearchCoursesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCoursesStateCopyWith<$Res> {
  factory $SearchCoursesStateCopyWith(
          SearchCoursesState value, $Res Function(SearchCoursesState) then) =
      _$SearchCoursesStateCopyWithImpl<$Res, SearchCoursesState>;
}

/// @nodoc
class _$SearchCoursesStateCopyWithImpl<$Res, $Val extends SearchCoursesState>
    implements $SearchCoursesStateCopyWith<$Res> {
  _$SearchCoursesStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchCoursesState
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
    extends _$SearchCoursesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchCoursesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchCoursesState.initial()';
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
    required TResult Function(List<SearchCoursesResponseBody> courses) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SearchCoursesResponseBody> courses)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SearchCoursesResponseBody> courses)? success,
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
    required TResult Function(SearchCoursesLoading value) loading,
    required TResult Function(SearchCoursesSuccess value) success,
    required TResult Function(SearchCoursesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchCoursesLoading value)? loading,
    TResult? Function(SearchCoursesSuccess value)? success,
    TResult? Function(SearchCoursesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchCoursesLoading value)? loading,
    TResult Function(SearchCoursesSuccess value)? success,
    TResult Function(SearchCoursesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchCoursesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchCoursesLoadingImplCopyWith<$Res> {
  factory _$$SearchCoursesLoadingImplCopyWith(_$SearchCoursesLoadingImpl value,
          $Res Function(_$SearchCoursesLoadingImpl) then) =
      __$$SearchCoursesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchCoursesLoadingImplCopyWithImpl<$Res>
    extends _$SearchCoursesStateCopyWithImpl<$Res, _$SearchCoursesLoadingImpl>
    implements _$$SearchCoursesLoadingImplCopyWith<$Res> {
  __$$SearchCoursesLoadingImplCopyWithImpl(_$SearchCoursesLoadingImpl _value,
      $Res Function(_$SearchCoursesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchCoursesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchCoursesLoadingImpl implements SearchCoursesLoading {
  const _$SearchCoursesLoadingImpl();

  @override
  String toString() {
    return 'SearchCoursesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCoursesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SearchCoursesResponseBody> courses) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SearchCoursesResponseBody> courses)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SearchCoursesResponseBody> courses)? success,
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
    required TResult Function(SearchCoursesLoading value) loading,
    required TResult Function(SearchCoursesSuccess value) success,
    required TResult Function(SearchCoursesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchCoursesLoading value)? loading,
    TResult? Function(SearchCoursesSuccess value)? success,
    TResult? Function(SearchCoursesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchCoursesLoading value)? loading,
    TResult Function(SearchCoursesSuccess value)? success,
    TResult Function(SearchCoursesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchCoursesLoading implements SearchCoursesState {
  const factory SearchCoursesLoading() = _$SearchCoursesLoadingImpl;
}

/// @nodoc
abstract class _$$SearchCoursesSuccessImplCopyWith<$Res> {
  factory _$$SearchCoursesSuccessImplCopyWith(_$SearchCoursesSuccessImpl value,
          $Res Function(_$SearchCoursesSuccessImpl) then) =
      __$$SearchCoursesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchCoursesResponseBody> courses});
}

/// @nodoc
class __$$SearchCoursesSuccessImplCopyWithImpl<$Res>
    extends _$SearchCoursesStateCopyWithImpl<$Res, _$SearchCoursesSuccessImpl>
    implements _$$SearchCoursesSuccessImplCopyWith<$Res> {
  __$$SearchCoursesSuccessImplCopyWithImpl(_$SearchCoursesSuccessImpl _value,
      $Res Function(_$SearchCoursesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$SearchCoursesSuccessImpl(
      null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<SearchCoursesResponseBody>,
    ));
  }
}

/// @nodoc

class _$SearchCoursesSuccessImpl implements SearchCoursesSuccess {
  const _$SearchCoursesSuccessImpl(
      final List<SearchCoursesResponseBody> courses)
      : _courses = courses;

  final List<SearchCoursesResponseBody> _courses;
  @override
  List<SearchCoursesResponseBody> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'SearchCoursesState.success(courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCoursesSuccessImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of SearchCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCoursesSuccessImplCopyWith<_$SearchCoursesSuccessImpl>
      get copyWith =>
          __$$SearchCoursesSuccessImplCopyWithImpl<_$SearchCoursesSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SearchCoursesResponseBody> courses) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return success(courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SearchCoursesResponseBody> courses)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return success?.call(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SearchCoursesResponseBody> courses)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchCoursesLoading value) loading,
    required TResult Function(SearchCoursesSuccess value) success,
    required TResult Function(SearchCoursesError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchCoursesLoading value)? loading,
    TResult? Function(SearchCoursesSuccess value)? success,
    TResult? Function(SearchCoursesError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchCoursesLoading value)? loading,
    TResult Function(SearchCoursesSuccess value)? success,
    TResult Function(SearchCoursesError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchCoursesSuccess implements SearchCoursesState {
  const factory SearchCoursesSuccess(
          final List<SearchCoursesResponseBody> courses) =
      _$SearchCoursesSuccessImpl;

  List<SearchCoursesResponseBody> get courses;

  /// Create a copy of SearchCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCoursesSuccessImplCopyWith<_$SearchCoursesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCoursesErrorImplCopyWith<$Res> {
  factory _$$SearchCoursesErrorImplCopyWith(_$SearchCoursesErrorImpl value,
          $Res Function(_$SearchCoursesErrorImpl) then) =
      __$$SearchCoursesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$SearchCoursesErrorImplCopyWithImpl<$Res>
    extends _$SearchCoursesStateCopyWithImpl<$Res, _$SearchCoursesErrorImpl>
    implements _$$SearchCoursesErrorImplCopyWith<$Res> {
  __$$SearchCoursesErrorImplCopyWithImpl(_$SearchCoursesErrorImpl _value,
      $Res Function(_$SearchCoursesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$SearchCoursesErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$SearchCoursesErrorImpl implements SearchCoursesError {
  const _$SearchCoursesErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'SearchCoursesState.error(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCoursesErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of SearchCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCoursesErrorImplCopyWith<_$SearchCoursesErrorImpl> get copyWith =>
      __$$SearchCoursesErrorImplCopyWithImpl<_$SearchCoursesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SearchCoursesResponseBody> courses) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return error(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SearchCoursesResponseBody> courses)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return error?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SearchCoursesResponseBody> courses)? success,
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
    required TResult Function(SearchCoursesLoading value) loading,
    required TResult Function(SearchCoursesSuccess value) success,
    required TResult Function(SearchCoursesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchCoursesLoading value)? loading,
    TResult? Function(SearchCoursesSuccess value)? success,
    TResult? Function(SearchCoursesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchCoursesLoading value)? loading,
    TResult Function(SearchCoursesSuccess value)? success,
    TResult Function(SearchCoursesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchCoursesError implements SearchCoursesState {
  const factory SearchCoursesError(final ErrorHandler errorHandler) =
      _$SearchCoursesErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of SearchCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCoursesErrorImplCopyWith<_$SearchCoursesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
