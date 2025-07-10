import 'package:json_annotation/json_annotation.dart';

part 'all_notifications_response_model.g.dart';

@JsonSerializable()
class AllNotificationsResponseModel {
  final bool success;

  final List<NotificationItem> notifications;

  AllNotificationsResponseModel({
    required this.success,
    required this.notifications,
  });

  factory AllNotificationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AllNotificationsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AllNotificationsResponseModelToJson(this);
}

@JsonSerializable()
class NotificationItem {
  final String id;

  @JsonKey(name: 'recipient_id')
  final String recipientId;

  @JsonKey(name: 'recipient_type')
  final String recipientType;

  final String title;
  final String message;
  final String type;

  @JsonKey(name: 'is_read')
  final bool isRead;

  @JsonKey(name: 'created_at')
  final String createdAt;

  NotificationItem({
    required this.id,
    required this.recipientId,
    required this.recipientType,
    required this.title,
    required this.message,
    required this.type,
    required this.isRead,
    required this.createdAt,
  });

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationItemToJson(this);
}
