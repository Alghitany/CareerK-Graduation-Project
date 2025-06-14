import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/routing/routes.dart';

class HomePageTopBar extends StatelessWidget {
  const HomePageTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.w, 28.h, 12.w, 0.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundImage: const AssetImage("assets/images/company_logo.png"),
          ),
          horizontalSpace(16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Company Name",
                style: AppTextStyles.font16DunePoppinsSemiBold,
              ),
              verticalSpace(4),
              Text(
                "Software Company",
                style: AppTextStyles.font12GranitePoppinsRegular,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              context.pushNamed(Routes.notificationsScreen);
            },
            icon: Image.asset(
              "assets/svgs/notifications.png",
              height: 32.h,
              width: 32.w,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
