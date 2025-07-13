import 'package:json_annotation/json_annotation.dart';

part 'mark_notification_read_request_model.g.dart';

@JsonSerializable()
class MarkNotificationReadRequestModel {
  final String status;

  MarkNotificationReadRequestModel({
    required this.status,
  });

  Map<String, dynamic> toJson() =>
      _$MarkNotificationReadRequestModelToJson(this);
}
