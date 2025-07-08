// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_profile_get_all_service_post_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerProfileGetAllServicePostResponseBody
    _$CustomerProfileGetAllServicePostResponseBodyFromJson(
            Map<String, dynamic> json) =>
        CustomerProfileGetAllServicePostResponseBody(
          total: (json['total'] as num).toInt(),
          posts: (json['posts'] as List<dynamic>)
              .map((e) => PostItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$CustomerProfileGetAllServicePostResponseBodyToJson(
        CustomerProfileGetAllServicePostResponseBody instance) =>
    <String, dynamic>{
      'total': instance.total,
      'posts': instance.posts,
    };

PostItem _$PostItemFromJson(Map<String, dynamic> json) => PostItem(
      id: json['id'] as String,
      title: json['title'] as String?,
      serviceType: json['serviceType'] as String?,
      budgetRange: json['budgetRange'] as String?,
      createdAt: json['createdAt'] as String?,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$PostItemToJson(PostItem instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'serviceType': instance.serviceType,
      'budgetRange': instance.budgetRange,
      'createdAt': instance.createdAt,
      'profilePicture': instance.profilePicture,
    };
