import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../data/models/developer_add_job_bookmark_models/developer_add_job_bookmark_response.dart';

part 'developer_add_job_bookmark_state.freezed.dart';

@freezed
class DeveloperAddJobBookmarkState with _$DeveloperAddJobBookmarkState {
  const factory DeveloperAddJobBookmarkState.initial() = _Initial;

  const factory DeveloperAddJobBookmarkState.loading() =
      DeveloperAddJobBookmarkLoading;

  const factory DeveloperAddJobBookmarkState.success(
    DeveloperAddJobBookmarkResponse response,
  ) = DeveloperAddJobBookmarkSuccess;

  const factory DeveloperAddJobBookmarkState.error(
    ErrorHandler errorHandler,
  ) = DeveloperAddJobBookmarkError;
}
