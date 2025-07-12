// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_main_page_skills_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileMainPageSkillsResponseBody
    _$DeveloperProfileMainPageSkillsResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileMainPageSkillsResponseBody(
          success: json['success'] as bool?,
          skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => DeveloperSkill.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$DeveloperProfileMainPageSkillsResponseBodyToJson(
        DeveloperProfileMainPageSkillsResponseBody instance) =>
    <String, dynamic>{
      'success': instance.success,
      'skills': instance.skills,
    };

DeveloperSkill _$DeveloperSkillFromJson(Map<String, dynamic> json) =>
    DeveloperSkill(
      skillId: json['skill_id'] as String?,
      skillName: json['skill_name'] as String?,
      progressPercentage: (json['progress_percentage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DeveloperSkillToJson(DeveloperSkill instance) =>
    <String, dynamic>{
      'skill_id': instance.skillId,
      'skill_name': instance.skillName,
      'progress_percentage': instance.progressPercentage,
    };
