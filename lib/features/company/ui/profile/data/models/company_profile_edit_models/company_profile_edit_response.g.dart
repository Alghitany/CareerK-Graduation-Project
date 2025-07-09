// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_profile_edit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyProfileEditResponse _$CompanyProfileEditResponseFromJson(
        Map<String, dynamic> json) =>
    CompanyProfileEditResponse(
      message: json['message'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyProfileEditResponseToJson(
        CompanyProfileEditResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'company': instance.company,
    };

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      id: json['id'] as String?,
      companyName: json['company_name'] as String?,
      email: json['email'] as String?,
      briefDescription: json['brief_description'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      website: json['website'] as String?,
      industry: json['industry'] as String?,
      contactName: json['contact_name'] as String?,
      contactEmail: json['contact_email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      socialMediaLinks: json['social_media_links'] as List<dynamic>?,
      role: json['role'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
      'email': instance.email,
      'brief_description': instance.briefDescription,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'website': instance.website,
      'industry': instance.industry,
      'contact_name': instance.contactName,
      'contact_email': instance.contactEmail,
      'phone_number': instance.phoneNumber,
      'social_media_links': instance.socialMediaLinks,
      'role': instance.role,
      'profile_picture': instance.profilePicture,
    };
