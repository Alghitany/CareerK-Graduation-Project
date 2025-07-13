// import 'package:carrerk/core/helpers/spacing.dart';
// import 'package:carrerk/core/theming/styles.dart';
// import 'package:carrerk/core/widgets/app_back_icon.dart';
// import 'package:carrerk/features/notifications/ui/widgets/notification_card.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class NotificationsScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> notifications = [
//     {
//       'title': 'Apply Success',
//       'description':
//           'You have applied for a job in Queenify Group as UI Designer',
//       'time': '14h ago',
//       'isRead': false,
//     },
//     {
//       'title': 'New Job Posted',
//       'description': 'A new job has been posted for Android Developers',
//       'time': '2 days ago',
//       'isRead': true,
//     },
//     {
//       'title': 'Interview Scheduled',
//       'description':
//           'Your interview for UI/UX position is scheduled for tomorrow',
//       'time': '1 day ago',
//       'isRead': false,
//     },
//     {
//       'title': 'Interview Scheduled',
//       'description':
//           'Your interview for UI/UX position is scheduled for tomorrow',
//       'time': '1 day ago',
//       'isRead': false,
//     },
//     {
//       'title': 'Interview Scheduled',
//       'description':
//           'Your interview for UI/UX position is scheduled for tomorrow',
//       'time': '1 day ago',
//       'isRead': false,
//     },
//     {
//       'title': 'Interview Scheduled',
//       'description':
//           'Your interview for UI/UX position is scheduled for tomorrow',
//       'time': '1 day ago',
//       'isRead': false,
//     },
//     {
//       'title': 'Interview Scheduled',
//       'description':
//           'Your interview for UI/UX position is scheduled for tomorrow',
//       'time': '1 day ago',
//       'isRead': false,
//     },
//   ];

//   NotificationsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.h),
//           child: Column(
//             children: [
//               const AppBackIcon(),
//               verticalSpace(16),
//               Text(
//                 'Notification',
//                 style: AppTextStyles.font24DunePoppinsSemiBold,
//               ),
//               verticalSpace(32),
//               NotificationList(notifications: notifications)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/features/notifications/logic/get_all/all_notification_cubit.dart';
import 'package:carrerk/features/notifications/logic/get_all/all_notification_state.dart';
import 'package:carrerk/features/notifications/ui/widgets/notification_card.dart';
import 'package:carrerk/features/notifications/ui/widgets/notifications_shimmer_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(16),
              Text(
                'Notification',
                style: AppTextStyles.font24DunePoppinsSemiBold,
              ),
              verticalSpace(32),
              BlocBuilder<AllNotificationCubit, AllNotificationState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(),
                    loading: () => const NotificationsShimmerList(),
                    success: (notificationsResponse) {
                      return NotificationList(
                        notifications: notificationsResponse.notifications,
                      );
                    },
                    error: (errorHandler) => Center(
                      child: Text('Error: ${errorHandler.apiErrorModel}'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
