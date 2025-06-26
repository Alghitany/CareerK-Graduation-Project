import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceiveMessage extends StatelessWidget {
  const ReceiveMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
            decoration: BoxDecoration(
                color: ColorsManager.mercury,
                borderRadius: BorderRadius.circular(16)),
            width: 224.w,
            child: Column(
              children: [
                Text(
                    'Lorem ipsum dolor sit amet consectetur. Congue donec imperdiet accumsan faucibus id amet vel leo at. Tellus vitae lacinia tristique consequat laoreet non mus ac interdum.  Tellus vitae lacinia tristique consequat. ',
                    style: AppTextStyles.font12BlackPoppinsRegular),
                verticalSpace(12),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '08:20 AM',
                    style: AppTextStyles.font12BlackPoppinsRegular,
                  ),
                )
              ],
            ),
          ),
          horizontalSpace(2),
          //TODO: Profile Picture Should appear here instead of this red avatar
          const CircleAvatar(
            backgroundColor: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
