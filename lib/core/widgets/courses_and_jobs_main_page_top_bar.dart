import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../routing/routes.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class CoursesAndJobsMainPageTopBar extends StatelessWidget {
  const CoursesAndJobsMainPageTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      color: ColorsManager.magnolia,
      child: Padding(
        padding: EdgeInsets.fromLTRB(18.w, 0.h, 18.w, 0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi,',
                  style: AppTextStyles.font16BlackPoppinsSemiBold,
                ),
                Text('Ali Mohamed',
                    style: AppTextStyles.font16BlackPoppinsSemiBold)
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.developerProfileMainPageScreen);
              },
              child: Container(
                width: 56.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  border: Border.all(
                    color: ColorsManager.lemonGrass,
                    width: 1.w,
                  ),
                ),
                alignment: Alignment.center,
                //TODO: If there is a picture it should appear.
                child: SvgPicture.asset(
                  "assets/svgs/person_outlined.svg",
                  height: 24.h,
                  width: 24.w,
                  colorFilter: const ColorFilter.mode(
                      ColorsManager.lemonGrass, BlendMode.srcIn),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
