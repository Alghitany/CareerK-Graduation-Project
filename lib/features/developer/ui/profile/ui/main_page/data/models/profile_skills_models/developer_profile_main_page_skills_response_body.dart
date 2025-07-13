import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_main_page_skills_response_body.g.dart';

@JsonSerializable()
class DeveloperProfileMainPageSkillsResponseBody {
  final bool? success;
  final List<DeveloperSkill>? skills;

  DeveloperProfileMainPageSkillsResponseBody({
    this.success,
    this.skills,
  });

  factory DeveloperProfileMainPageSkillsResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileMainPageSkillsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileMainPageSkillsResponseBodyToJson(this);
}

@JsonSerializable()
class DeveloperSkill {
  @JsonKey(name: 'skill_id')
  final String? skillId;

  @JsonKey(name: 'skill_name')
  final String? skillName;

  @JsonKey(name: 'progress_percentage')
  final int? progressPercentage;

  DeveloperSkill({
    this.skillId,
    this.skillName,
    this.progressPercentage,
  });

  factory DeveloperSkill.fromJson(Map<String, dynamic> json) =>
      _$DeveloperSkillFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperSkillToJson(this);
}
