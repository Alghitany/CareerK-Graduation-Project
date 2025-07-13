import 'package:carrerk/features/notifications/data/model/mark_one/mark_notification_read_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/networking/api_error_handler.dart';

part 'mark_notification_read_state.freezed.dart';

@freezed
class MarkNotificationReadState with _$MarkNotificationReadState {
  const factory MarkNotificationReadState.initial() = _Initial;
  const factory MarkNotificationReadState.loading() = _Loading;
  const factory MarkNotificationReadState.success(
    MarkNotificationReadResponseModel notification,
  ) = _Success;
  const factory MarkNotificationReadState.error(
    ErrorHandler errorHandler,
  ) = _Error;
}
