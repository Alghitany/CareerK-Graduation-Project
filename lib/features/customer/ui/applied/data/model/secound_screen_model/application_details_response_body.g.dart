// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_details_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationDetailsResponseBody _$ApplicationDetailsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    ApplicationDetailsResponseBody(
      application:
          ApplicationItem.fromJson(json['application'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationDetailsResponseBodyToJson(
        ApplicationDetailsResponseBody instance) =>
    <String, dynamic>{
      'application': instance.application,
    };

ApplicationItem _$ApplicationItemFromJson(Map<String, dynamic> json) =>
    ApplicationItem(
      id: json['id'] as String,
      developerId: json['developerId'] as String,
      servicePostId: json['servicePostId'] as String,
      submittedAt: json['submittedAt'] as String,
      createdAt: json['createdAt'] as String,
      status: json['status'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      yearsOfExperience: (json['yearsOfExperience'] as num).toInt(),
      expectedSalary: json['expectedSalary'] as String,
      uploadedCv: json['uploadedCv'] as String,
      uploadedCvLink: json['uploadedCvLink'] as String,
      developer: Developer.fromJson(json['developer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationItemToJson(ApplicationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'developerId': instance.developerId,
      'servicePostId': instance.servicePostId,
      'submittedAt': instance.submittedAt,
      'createdAt': instance.createdAt,
      'status': instance.status,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'yearsOfExperience': instance.yearsOfExperience,
      'expectedSalary': instance.expectedSalary,
      'uploadedCv': instance.uploadedCv,
      'uploadedCvLink': instance.uploadedCvLink,
      'developer': instance.developer,
    };

Developer _$DeveloperFromJson(Map<String, dynamic> json) => Developer(
      id: json['id'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      briefBio: json['briefBio'] as String?,
      trackTitle: json['trackTitle'] as String?,
      profilePicture: json['profilePicture'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeveloperToJson(Developer instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'briefBio': instance.briefBio,
      'trackTitle': instance.trackTitle,
      'profilePicture': instance.profilePicture,
      'location': instance.location,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
    };
