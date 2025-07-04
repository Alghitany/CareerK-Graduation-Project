import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_name_home_main_page_models/developer_name_home_main_page_response_body.dart';

part 'developer_name_home_main_page_state.freezed.dart';

@freezed
class DeveloperNameHomeMainPageState with _$DeveloperNameHomeMainPageState {
  const factory DeveloperNameHomeMainPageState.initial() = _Initial;

  const factory DeveloperNameHomeMainPageState.developerNameLoading() =
  DeveloperNameLoading;

  const factory DeveloperNameHomeMainPageState.developerNameSuccess(
      DeveloperNameHomeMainPageResponseBody data,
      ) = DeveloperNameSuccess;

  const factory DeveloperNameHomeMainPageState.developerNameError({
    required String error,
  }) = DeveloperNameError;
}
