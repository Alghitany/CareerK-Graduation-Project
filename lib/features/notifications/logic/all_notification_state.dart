import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/networking/api_error_handler.dart';
import '../data/model/all_notifications_response_model.dart';

part 'all_notification_state.freezed.dart';

@freezed
class AllNotificationState with _$AllNotificationState {
  const factory AllNotificationState.initial() = _Initial;

  const factory AllNotificationState.loading() = AllNotificationLoading;

  const factory AllNotificationState.success(
    AllNotificationsResponseModel notifications,
  ) = AllNotificationSuccess;

  const factory AllNotificationState.error(
    ErrorHandler errorHandler,
  ) = AllNotificationError;
}
