import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_tags_home_main_page_models/developer_tags_home_main_page_response_body.dart';

part 'developer_tags_home_main_page_state.freezed.dart';

@freezed
class DeveloperTagsHomeMainPageState with _$DeveloperTagsHomeMainPageState {
  const factory DeveloperTagsHomeMainPageState.initial() = _Initial;

  const factory DeveloperTagsHomeMainPageState.loading() = DeveloperTagsLoading;

  const factory DeveloperTagsHomeMainPageState.success(
    List<DeveloperTagsHomeMainPageResponseBody> data,
  ) = DeveloperTagsSuccess;

  const factory DeveloperTagsHomeMainPageState.error({
    required String error,
  }) = DeveloperTagsError;
}
