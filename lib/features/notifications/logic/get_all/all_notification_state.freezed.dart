// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllNotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AllNotificationsResponseModel notifications)
        success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllNotificationsResponseModel notifications)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllNotificationsResponseModel notifications)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AllNotificationLoading value) loading,
    required TResult Function(AllNotificationSuccess value) success,
    required TResult Function(AllNotificationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AllNotificationLoading value)? loading,
    TResult? Function(AllNotificationSuccess value)? success,
    TResult? Function(AllNotificationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AllNotificationLoading value)? loading,
    TResult Function(AllNotificationSuccess value)? success,
    TResult Function(AllNotificationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllNotificationStateCopyWith<$Res> {
  factory $AllNotificationStateCopyWith(AllNotificationState value,
          $Res Function(AllNotificationState) then) =
      _$AllNotificationStateCopyWithImpl<$Res, AllNotificationState>;
}

/// @nodoc
class _$AllNotificationStateCopyWithImpl<$Res,
        $Val extends AllNotificationState>
    implements $AllNotificationStateCopyWith<$Res> {
  _$AllNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllNotificationState
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
    extends _$AllNotificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllNotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AllNotificationState.initial()';
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
    required TResult Function(AllNotificationsResponseModel notifications)
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
    TResult? Function(AllNotificationsResponseModel notifications)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllNotificationsResponseModel notifications)? success,
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
    required TResult Function(AllNotificationLoading value) loading,
    required TResult Function(AllNotificationSuccess value) success,
    required TResult Function(AllNotificationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AllNotificationLoading value)? loading,
    TResult? Function(AllNotificationSuccess value)? success,
    TResult? Function(AllNotificationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AllNotificationLoading value)? loading,
    TResult Function(AllNotificationSuccess value)? success,
    TResult Function(AllNotificationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AllNotificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AllNotificationLoadingImplCopyWith<$Res> {
  factory _$$AllNotificationLoadingImplCopyWith(
          _$AllNotificationLoadingImpl value,
          $Res Function(_$AllNotificationLoadingImpl) then) =
      __$$AllNotificationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllNotificationLoadingImplCopyWithImpl<$Res>
    extends _$AllNotificationStateCopyWithImpl<$Res,
        _$AllNotificationLoadingImpl>
    implements _$$AllNotificationLoadingImplCopyWith<$Res> {
  __$$AllNotificationLoadingImplCopyWithImpl(
      _$AllNotificationLoadingImpl _value,
      $Res Function(_$AllNotificationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllNotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllNotificationLoadingImpl implements AllNotificationLoading {
  const _$AllNotificationLoadingImpl();

  @override
  String toString() {
    return 'AllNotificationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllNotificationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AllNotificationsResponseModel notifications)
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
    TResult? Function(AllNotificationsResponseModel notifications)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllNotificationsResponseModel notifications)? success,
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
    required TResult Function(AllNotificationLoading value) loading,
    required TResult Function(AllNotificationSuccess value) success,
    required TResult Function(AllNotificationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AllNotificationLoading value)? loading,
    TResult? Function(AllNotificationSuccess value)? success,
    TResult? Function(AllNotificationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AllNotificationLoading value)? loading,
    TResult Function(AllNotificationSuccess value)? success,
    TResult Function(AllNotificationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AllNotificationLoading implements AllNotificationState {
  const factory AllNotificationLoading() = _$AllNotificationLoadingImpl;
}

/// @nodoc
abstract class _$$AllNotificationSuccessImplCopyWith<$Res> {
  factory _$$AllNotificationSuccessImplCopyWith(
          _$AllNotificationSuccessImpl value,
          $Res Function(_$AllNotificationSuccessImpl) then) =
      __$$AllNotificationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AllNotificationsResponseModel notifications});
}

/// @nodoc
class __$$AllNotificationSuccessImplCopyWithImpl<$Res>
    extends _$AllNotificationStateCopyWithImpl<$Res,
        _$AllNotificationSuccessImpl>
    implements _$$AllNotificationSuccessImplCopyWith<$Res> {
  __$$AllNotificationSuccessImplCopyWithImpl(
      _$AllNotificationSuccessImpl _value,
      $Res Function(_$AllNotificationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$AllNotificationSuccessImpl(
      null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as AllNotificationsResponseModel,
    ));
  }
}

/// @nodoc

class _$AllNotificationSuccessImpl implements AllNotificationSuccess {
  const _$AllNotificationSuccessImpl(this.notifications);

  @override
  final AllNotificationsResponseModel notifications;

  @override
  String toString() {
    return 'AllNotificationState.success(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllNotificationSuccessImpl &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notifications);

  /// Create a copy of AllNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllNotificationSuccessImplCopyWith<_$AllNotificationSuccessImpl>
      get copyWith => __$$AllNotificationSuccessImplCopyWithImpl<
          _$AllNotificationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AllNotificationsResponseModel notifications)
        success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return success(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllNotificationsResponseModel notifications)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return success?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllNotificationsResponseModel notifications)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AllNotificationLoading value) loading,
    required TResult Function(AllNotificationSuccess value) success,
    required TResult Function(AllNotificationError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AllNotificationLoading value)? loading,
    TResult? Function(AllNotificationSuccess value)? success,
    TResult? Function(AllNotificationError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AllNotificationLoading value)? loading,
    TResult Function(AllNotificationSuccess value)? success,
    TResult Function(AllNotificationError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AllNotificationSuccess implements AllNotificationState {
  const factory AllNotificationSuccess(
          final AllNotificationsResponseModel notifications) =
      _$AllNotificationSuccessImpl;

  AllNotificationsResponseModel get notifications;

  /// Create a copy of AllNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllNotificationSuccessImplCopyWith<_$AllNotificationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllNotificationErrorImplCopyWith<$Res> {
  factory _$$AllNotificationErrorImplCopyWith(_$AllNotificationErrorImpl value,
          $Res Function(_$AllNotificationErrorImpl) then) =
      __$$AllNotificationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$AllNotificationErrorImplCopyWithImpl<$Res>
    extends _$AllNotificationStateCopyWithImpl<$Res, _$AllNotificationErrorImpl>
    implements _$$AllNotificationErrorImplCopyWith<$Res> {
  __$$AllNotificationErrorImplCopyWithImpl(_$AllNotificationErrorImpl _value,
      $Res Function(_$AllNotificationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$AllNotificationErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$AllNotificationErrorImpl implements AllNotificationError {
  const _$AllNotificationErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'AllNotificationState.error(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllNotificationErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of AllNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllNotificationErrorImplCopyWith<_$AllNotificationErrorImpl>
      get copyWith =>
          __$$AllNotificationErrorImplCopyWithImpl<_$AllNotificationErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AllNotificationsResponseModel notifications)
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
    TResult? Function(AllNotificationsResponseModel notifications)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return error?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllNotificationsResponseModel notifications)? success,
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
    required TResult Function(AllNotificationLoading value) loading,
    required TResult Function(AllNotificationSuccess value) success,
    required TResult Function(AllNotificationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AllNotificationLoading value)? loading,
    TResult? Function(AllNotificationSuccess value)? success,
    TResult? Function(AllNotificationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AllNotificationLoading value)? loading,
    TResult Function(AllNotificationSuccess value)? success,
    TResult Function(AllNotificationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AllNotificationError implements AllNotificationState {
  const factory AllNotificationError(final ErrorHandler errorHandler) =
      _$AllNotificationErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of AllNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllNotificationErrorImplCopyWith<_$AllNotificationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
