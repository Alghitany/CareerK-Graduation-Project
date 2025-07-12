import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/profile_skills_models/developer_profile_main_page_skills_response_body.dart';

part 'developer_profile_main_page_skills_state.freezed.dart';

@freezed
class DeveloperProfileMainPageSkillsState
    with _$DeveloperProfileMainPageSkillsState {
  const factory DeveloperProfileMainPageSkillsState.initial() = Initial;

  const factory DeveloperProfileMainPageSkillsState.loading() = Loading;

  const factory DeveloperProfileMainPageSkillsState.success(
      DeveloperProfileMainPageSkillsResponseBody data,
      ) = Success;

  const factory DeveloperProfileMainPageSkillsState.error({
    required String error,
  }) = Error;
}
