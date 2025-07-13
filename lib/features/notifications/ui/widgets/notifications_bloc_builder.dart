import 'package:carrerk/features/notifications/logic/get_all/all_notification_cubit.dart';
import 'package:carrerk/features/notifications/logic/get_all/all_notification_state.dart';
import 'package:carrerk/features/notifications/ui/widgets/NotificationsShimmer.dart';
import 'package:carrerk/features/notifications/ui/widgets/notification_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsBlocBuilder extends StatelessWidget {
  const NotificationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllNotificationCubit, AllNotificationState>(
      buildWhen: (previous, current) =>
          current is AllNotificationLoading ||
          current is AllNotificationSuccess ||
          current is AllNotificationError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const NotificationsShimmer(),
          success: (notificationsResponse) {
            return NotificationList(
              notifications: notificationsResponse.notifications,
            );
          },
          error: (errorHandler) => Center(
            child: Text('❌ ${errorHandler.apiErrorModel}'),
          ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
