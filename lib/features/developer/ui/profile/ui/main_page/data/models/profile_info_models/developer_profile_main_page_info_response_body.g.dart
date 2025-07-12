// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_main_page_info_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileMainPageInfoResponseBody
    _$DeveloperProfileMainPageInfoResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileMainPageInfoResponseBody(
          id: json['id'] as String?,
          firstName: json['first_name'] as String?,
          lastName: json['last_name'] as String?,
          email: json['email'] as String?,
          gender: json['gender'] as String?,
          dateOfBirth: json['date_of_birth'] as String?,
          phoneNumber: json['phone_number'] as String?,
          country: json['country'] as String?,
          city: json['city'] as String?,
          address: json['address'] as String?,
          briefBio: json['brief_bio'] as String?,
          skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          currentTrack: json['current_track'] as String?,
          trackLevel: json['track_level'] as String?,
          previousJob: json['previous_job'] as String?,
          typeOfJob: json['type_of_job'] as String?,
          yearsOfExperience: (json['years_of_experience'] as num?)?.toInt(),
          expectedSalary: json['expected_salary'] as String?,
          uploadedCv: json['uploaded_cv'] as String?,
          interestedCourses: (json['interested_courses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          profilePicture: json['profile_picture'] as String?,
          createdAt: json['created_at'] as String?,
          updatedAt: json['updated_at'] as String?,
          profilePictureLink: json['profilePictureLink'] as String?,
          uploadedCvLink: json['uploadedCvLink'] as String?,
        );

Map<String, dynamic> _$DeveloperProfileMainPageInfoResponseBodyToJson(
        DeveloperProfileMainPageInfoResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth,
      'phone_number': instance.phoneNumber,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'brief_bio': instance.briefBio,
      'skills': instance.skills,
      'current_track': instance.currentTrack,
      'track_level': instance.trackLevel,
      'previous_job': instance.previousJob,
      'type_of_job': instance.typeOfJob,
      'years_of_experience': instance.yearsOfExperience,
      'expected_salary': instance.expectedSalary,
      'uploaded_cv': instance.uploadedCv,
      'interested_courses': instance.interestedCourses,
      'profile_picture': instance.profilePicture,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'profilePictureLink': instance.profilePictureLink,
      'uploadedCvLink': instance.uploadedCvLink,
    };
