// import 'package:carrerk/core/helpers/spacing.dart';
// import 'package:carrerk/core/theming/colors.dart';
// import 'package:carrerk/core/theming/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class NotificationList extends StatefulWidget {
//   final List<Map<String, dynamic>> notifications;

//   const NotificationList({
//     super.key,
//     required this.notifications,
//   });

//   @override
//   State<NotificationList> createState() => _NotificationListState();
// }

// class _NotificationListState extends State<NotificationList> {
//   void deleteNotification(int index) {
//     setState(() {
//       widget.notifications.removeAt(index);
//     });
//   }

//   void markAsRead(int index) {
//     setState(() {
//       widget.notifications[index]['isRead'] = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         itemCount: widget.notifications.length,
//         itemBuilder: (context, index) {
//           final notification = widget.notifications[index];
//           return developerNotificationCard(
//             title: notification['title'],
//             description: notification['description'],
//             time: notification['time'],
//             isRead: notification['isRead'],
//             index: index,
//             markAsRead: markAsRead,
//             deleteNotification: deleteNotification,
//           );
//         },
//       ),
//     );
//   }

//   Widget developerNotificationCard({
//     required String title,
//     required String description,
//     required String time,
//     required bool isRead,
//     required int index,
//     required void Function(int) markAsRead,
//     required void Function(int) deleteNotification,
//   }) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       height: 138.h,
//       width: double.infinity.w,
//       padding: EdgeInsets.fromLTRB(21.5.w, 18.h, 13.w, 14.h),
//       margin: EdgeInsets.symmetric(vertical: 6.h),
//       decoration: BoxDecoration(
//         color: isRead ? ColorsManager.aquaHaze : ColorsManager.duskyBlue,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               if (!isRead)
//                 const Icon(Icons.circle, color: Colors.white, size: 12),
//               if (!isRead) horizontalSpace(8),
//               Text(title,
//                   style: isRead
//                       ? AppTextStyles.font16BlackPoppinsSemiBold
//                       : AppTextStyles.font16WhitePoppinsSemiBold),
//             ],
//           ),
//           verticalSpace(6),
//           Text(description,
//               style: isRead
//                   ? AppTextStyles.font14BlackPoppinsRegular
//                   : AppTextStyles.font14WhitePoppinsRegular),
//           verticalSpace(12),
//           Row(
//             children: [
//               Icon(Icons.access_time,
//                   color: isRead ? ColorsManager.lemonGrass : Colors.white,
//                   size: 14),
//               horizontalSpace(4),
//               Text(isRead ? time : "14h ago",
//                   style: isRead
//                       ? AppTextStyles.font14LemonGrassPoppinsRegular
//                       : AppTextStyles.font14WhitePoppinsRegular),
//               const Spacer(),
//               !isRead
//                   ? GestureDetector(
//                       onTap: () {
//                         markAsRead(index);
//                       },
//                       child: Text("Mark as read",
//                           style: AppTextStyles.font14WhitePoppinsMedium),
//                     )
//                   : GestureDetector(
//                       onTap: () {
//                         deleteNotification(index);
//                       },
//                       child: Text("Delete",
//                           style: AppTextStyles.font14ArtyClickRedPoppinsMedium),
//                     )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/features/notifications/data/model/get_all/all_notifications_response_model.dart';
import 'package:carrerk/features/notifications/data/model/mark_one/mark_notification_read_request_model.dart';
import 'package:carrerk/features/notifications/logic/mark_one/mark_notification_read_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationList extends StatefulWidget {
  final List<NotificationItem> notifications;

  const NotificationList({
    super.key,
    required this.notifications,
  });

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  late List<NotificationItem> _notifications;

  @override
  void initState() {
    super.initState();
    _notifications = List.from(widget.notifications);
  }

  void deleteNotification(int index) {
    setState(() {
      _notifications.removeAt(index);
    });
  }

  void markAsRead(int index) {
    final notif = _notifications[index];
    context.read<MarkNotificationReadCubit>().markNotificationAsRead(
        notificationId: notif.id,
        body: MarkNotificationReadRequestModel(status: 'read'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _notifications.length,
        itemBuilder: (context, index) {
          final notification = _notifications[index];
          return developerNotificationCard(
            title: notification.title,
            description: notification.message,
            time: notification.createdAt,
            isRead: notification.isRead,
            index: index,
            markAsRead: markAsRead,
            deleteNotification: deleteNotification,
          );
        },
      ),
    );
  }

  Widget developerNotificationCard({
    required String title,
    required String description,
    required String time,
    required bool isRead,
    required int index,
    required void Function(int) markAsRead,
    required void Function(int) deleteNotification,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: double.infinity.w,
      constraints: BoxConstraints(minHeight: 139.h),
      padding: EdgeInsets.fromLTRB(21.5.w, 18.h, 13.w, 14.h),
      margin: EdgeInsets.symmetric(vertical: 6.h),
      decoration: BoxDecoration(
        color: isRead ? ColorsManager.aquaHaze : ColorsManager.duskyBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              if (!isRead)
                const Icon(Icons.circle, color: Colors.white, size: 12),
              if (!isRead) horizontalSpace(8),
              Flexible(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: isRead
                      ? AppTextStyles.font16BlackPoppinsSemiBold
                      : AppTextStyles.font16WhitePoppinsSemiBold,
                ),
              ),
            ],
          ),
          verticalSpace(6),
          Text(
            description,
            style: isRead
                ? AppTextStyles.font14BlackPoppinsRegular
                : AppTextStyles.font14WhitePoppinsRegular,
          ),
          verticalSpace(12),
          Row(
            children: [
              Icon(Icons.access_time,
                  color: isRead ? ColorsManager.lemonGrass : Colors.white,
                  size: 14),
              horizontalSpace(4),
              Text(
                time,
                style: isRead
                    ? AppTextStyles.font14LemonGrassPoppinsRegular
                    : AppTextStyles.font14WhitePoppinsRegular,
              ),
              const Spacer(),
              !isRead
                  ? GestureDetector(
                      onTap: () {
                        markAsRead(index);
                      },
                      child: Text(
                        "Mark as read",
                        style: AppTextStyles.font14WhitePoppinsMedium,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        deleteNotification(index);
                      },
                      child: Text(
                        "Delete",
                        style: AppTextStyles.font14ArtyClickRedPoppinsMedium,
                      ),
                    )
            ],
          ),
        ],
      ),
    );
  }
}
