// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_profile_info_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyProfileInfoResponseBody _$CompanyProfileInfoResponseBodyFromJson(
        Map<String, dynamic> json) =>
    CompanyProfileInfoResponseBody(
      id: json['id'] as String,
      companyName: json['company_name'] as String,
      country: json['country'] as String,
      city: json['city'] as String,
      address: json['address'] as String,
      phoneNumber: json['phone_number'] as String,
      email: json['email'] as String,
      profilePicture: json['profile_picture'] as String?,
      briefDescription: json['brief_description'] as String,
    );

Map<String, dynamic> _$CompanyProfileInfoResponseBodyToJson(
        CompanyProfileInfoResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'profile_picture': instance.profilePicture,
      'brief_description': instance.briefDescription,
    };
