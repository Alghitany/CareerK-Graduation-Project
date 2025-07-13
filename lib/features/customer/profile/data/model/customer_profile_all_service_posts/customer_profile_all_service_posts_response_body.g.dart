// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_profile_all_service_posts_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerProfileAllServicePostsResponseBody
    _$CustomerProfileAllServicePostsResponseBodyFromJson(
            Map<String, dynamic> json) =>
        CustomerProfileAllServicePostsResponseBody(
          total: (json['total'] as num).toInt(),
          posts: (json['posts'] as List<dynamic>)
              .map((e) => ServicePostItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$CustomerProfileAllServicePostsResponseBodyToJson(
        CustomerProfileAllServicePostsResponseBody instance) =>
    <String, dynamic>{
      'total': instance.total,
      'posts': instance.posts,
    };

ServicePostItem _$ServicePostItemFromJson(Map<String, dynamic> json) =>
    ServicePostItem(
      id: json['id'] as String,
      title: json['title'] as String,
      serviceType: json['serviceType'] as String,
      budgetRange: json['budgetRange'] as String,
      createdAt: json['createdAt'] as String,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$ServicePostItemToJson(ServicePostItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'serviceType': instance.serviceType,
      'budgetRange': instance.budgetRange,
      'createdAt': instance.createdAt,
      'profilePicture': instance.profilePicture,
    };
