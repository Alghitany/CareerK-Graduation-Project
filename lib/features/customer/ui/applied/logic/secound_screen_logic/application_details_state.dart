import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/networking/api_error_model.dart';

part 'application_details_state.freezed.dart';

@freezed
class ApplicationDetailsState<T> with _$ApplicationDetailsState<T> {
  const factory ApplicationDetailsState.initial() = _Initial;

  const factory ApplicationDetailsState.loading() = Loading;

  const factory ApplicationDetailsState.success(T data) = Success<T>;

  const factory ApplicationDetailsState.error(ApiErrorModel apiErrorModel) = Error;
}
