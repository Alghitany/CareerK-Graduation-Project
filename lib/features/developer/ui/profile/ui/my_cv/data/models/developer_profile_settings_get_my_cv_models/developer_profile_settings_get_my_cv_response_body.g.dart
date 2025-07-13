// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_settings_get_my_cv_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileSettingsGetMyCVResponseBody
    _$DeveloperProfileSettingsGetMyCVResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileSettingsGetMyCVResponseBody(
          uploadedCV: json['uploaded_cv'] as String?,
          generatedCV: json['generated_cv'] as String?,
        );

Map<String, dynamic> _$DeveloperProfileSettingsGetMyCVResponseBodyToJson(
        DeveloperProfileSettingsGetMyCVResponseBody instance) =>
    <String, dynamic>{
      'uploaded_cv': instance.uploadedCV,
      'generated_cv': instance.generatedCV,
    };
