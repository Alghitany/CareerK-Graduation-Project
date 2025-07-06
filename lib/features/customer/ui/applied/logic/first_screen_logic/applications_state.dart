import 'package:freezed_annotation/freezed_annotation.dart';

part 'applications_state.freezed.dart';

@freezed
class ApplicationsState<T> with _$ApplicationsState<T> {
  const factory ApplicationsState.initial() = _Initial;

  const factory ApplicationsState.loading() = Loading;

  const factory ApplicationsState.success(T data) = Success<T>;

  const factory ApplicationsState.error({required String error}) = Error;
}
