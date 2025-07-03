import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/routing/routes.dart';

class CustomerHomePageTopBar extends StatelessWidget {
  const CustomerHomePageTopBar({super.key});

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
          Text(
            " Name",
            style: AppTextStyles.font16DunePoppinsSemiBold,
          ),
          const Spacer(),
          // push to ??
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
