import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackIconAndMyCoursesText extends StatelessWidget {
  const BackIconAndMyCoursesText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(8.w,0.h,0.w,0.h),
            child: const AppBackIcon(),
          ),
        ),
        Text(
          'My Courses',
          style: AppTextStyles.font24BlackPoppinsRegular,
        ),
      ],
    );
  }
}
