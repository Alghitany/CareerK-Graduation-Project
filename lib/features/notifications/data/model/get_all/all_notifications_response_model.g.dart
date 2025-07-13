// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_notifications_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllNotificationsResponseModel _$AllNotificationsResponseModelFromJson(
        Map<String, dynamic> json) =>
    AllNotificationsResponseModel(
      success: json['success'] as bool,
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) => NotificationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllNotificationsResponseModelToJson(
        AllNotificationsResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'notifications': instance.notifications,
    };

NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) =>
    NotificationItem(
      id: json['id'] as String,
      recipientId: json['recipient_id'] as String,
      recipientType: json['recipient_type'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      type: json['type'] as String,
      isRead: json['is_read'] as bool,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$NotificationItemToJson(NotificationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipient_id': instance.recipientId,
      'recipient_type': instance.recipientType,
      'title': instance.title,
      'message': instance.message,
      'type': instance.type,
      'is_read': instance.isRead,
      'created_at': instance.createdAt,
    };
