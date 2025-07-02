import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../data/models/developer_single_job_bookmark_models/developer_single_job_bookmark_response_model.dart';

part 'developer_single_job_bookmark_state.freezed.dart';

@freezed
class DeveloperSingleJobBookmarkState with _$DeveloperSingleJobBookmarkState {
  const factory DeveloperSingleJobBookmarkState.initial() =
      _DeveloperSingleJobBookmarkInitial;

  const factory DeveloperSingleJobBookmarkState.loading() =
      DeveloperSingleJobBookmarkLoading;

  const factory DeveloperSingleJobBookmarkState.success(
    DeveloperSingleJobBookmarkResponseModel responseModel,
  ) = DeveloperSingleJobBookmarkSuccess;

  const factory DeveloperSingleJobBookmarkState.error(
    ErrorHandler errorHandler,
  ) = DeveloperSingleJobBookmarkError;
}
