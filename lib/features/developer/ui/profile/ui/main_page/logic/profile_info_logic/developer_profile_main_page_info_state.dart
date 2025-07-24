import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../core/networking/api_error_model.dart';
import '../../data/models/profile_info_models/developer_profile_main_page_info_response_body.dart';

part 'developer_profile_main_page_info_state.freezed.dart';

@freezed
class DeveloperProfileMainPageInfoState
    with _$DeveloperProfileMainPageInfoState {
  const factory DeveloperProfileMainPageInfoState.initial() = Initial;

  const factory DeveloperProfileMainPageInfoState.loading() = Loading;

  const factory DeveloperProfileMainPageInfoState.success(
    DeveloperProfileMainPageInfoResponseBody data,
  ) = Success;

  const factory DeveloperProfileMainPageInfoState.error(ApiErrorModel apiErrorModel) = Error;
}
