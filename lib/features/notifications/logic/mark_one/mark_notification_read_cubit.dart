import 'package:carrerk/features/notifications/data/model/mark_one/mark_notification_read_request_model.dart';
import 'package:carrerk/features/notifications/data/repo/mark_one/mark_notification_read_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/networking/api_error_handler.dart';

import 'mark_notification_read_state.dart';

class MarkNotificationReadCubit extends Cubit<MarkNotificationReadState> {
  final MarkNotificationReadRepo _repo;

  MarkNotificationReadCubit(this._repo)
      : super(const MarkNotificationReadState.initial());

  void markNotificationAsRead({
    required String notificationId,
    required MarkNotificationReadRequestModel body,
  }) async {
    emit(const MarkNotificationReadState.loading());
    final response = await _repo.markNotificationAsRead(
      notificationId: notificationId,
      body: body,
    );

    response.when(
      success: (notificationResponse) {
        emit(MarkNotificationReadState.success(notificationResponse));
      },
      failure: (errorHandler) {
        emit(MarkNotificationReadState.error(errorHandler));
      },
    );
  }
}
