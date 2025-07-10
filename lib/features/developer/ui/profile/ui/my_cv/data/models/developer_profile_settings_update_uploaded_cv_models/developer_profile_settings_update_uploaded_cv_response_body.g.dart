// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_settings_update_uploaded_cv_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileSettingsUpdateUploadedCVResponseBody
    _$DeveloperProfileSettingsUpdateUploadedCVResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileSettingsUpdateUploadedCVResponseBody(
          message: json['message'] as String,
          uploadedCV: json['uploaded_cv'] as String,
        );

Map<String, dynamic>
    _$DeveloperProfileSettingsUpdateUploadedCVResponseBodyToJson(
            DeveloperProfileSettingsUpdateUploadedCVResponseBody instance) =>
        <String, dynamic>{
          'message': instance.message,
          'uploaded_cv': instance.uploadedCV,
        };
