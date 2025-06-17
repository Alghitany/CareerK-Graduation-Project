import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SentMessageContainer extends StatelessWidget {
  const SentMessageContainer({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now(); // Get current date & time
    int hour = now.hour;
    int minute = now.minute;
    String amPm = now.hour >= 12 ? "PM" : "AM";

    return Container(
      margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: Should be replaced with real avatar
          const CircleAvatar(
            backgroundColor: Colors.green,
          ),
          horizontalSpace(2),
          Container(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
            decoration: BoxDecoration(
                color: ColorsManager.mercury,
                borderRadius: BorderRadius.circular(16)),
            width: 224.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: AppTextStyles.font12BlackPoppinsRegular,
                ),
                verticalSpace(12),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '$hour:$minute $amPm',
                    style: AppTextStyles.font12BlackPoppinsRegular,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
