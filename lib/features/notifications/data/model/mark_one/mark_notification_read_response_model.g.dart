// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_notification_read_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkNotificationReadResponseModel _$MarkNotificationReadResponseModelFromJson(
        Map<String, dynamic> json) =>
    MarkNotificationReadResponseModel(
      success: json['success'] as bool,
      notification: NotificationItem.fromJson(
          json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarkNotificationReadResponseModelToJson(
        MarkNotificationReadResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'notification': instance.notification,
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
