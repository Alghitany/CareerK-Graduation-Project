import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/routing/routes.dart';
import '../../logout/developer_profile_logout_screen.dart';

class SettingsOptionsList extends StatelessWidget {
  const SettingsOptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            settingServiceRow(
              icon: 'assets/svgs/person_outlined.svg',
              text: 'Edit Profile',
              leadingIconHeight: 19.5,
              leadingIconWidth: 15,
              onTap: () {
                context.pushNamed(Routes.developerProfileEditProfileScreen);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/course.svg',
              text: 'My Courses',
              leadingIconHeight: 21,
              leadingIconWidth: 21,
              onTap: () {
                context.pushNamed(Routes.developerCoursesMyCoursesScreen);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/document_outlined.svg',
              text: 'My CV',
              leadingIconHeight: 19.5,
              leadingIconWidth: 15,
              onTap: () {
                context.pushNamed(Routes.developerSignUpCompletedCvIsDone);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/open_book_outlined.svg',
              text: 'Test & Quiz',
              leadingIconHeight: 16.5,
              leadingIconWidth: 18,
              onTap: () {
                //TODO: This feature may be removed since we don't present courses
                //context.pushNamed(Routes.developerSignUpCompletedCvIsDone);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/bookmark_outlined.svg',
              text: 'Job Saved',
              leadingIconHeight: 18,
              leadingIconWidth: 15,
              onTap: () {
                context.pushNamed(Routes.developerProfileSavedJobsScreen);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/job.svg',
              text: 'Job Applied',
              onTap: () {
                context.pushNamed(Routes.developerProfileJobsAppliedScreen);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/notifications.svg',
              text: 'Notifications',
              leadingIconHeight: 18,
              leadingIconWidth: 16.5,
              onTap: () {
                context.pushNamed(Routes.notificationsScreen);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/payment.svg',
              text: 'Payment Option',
              leadingIconHeight: 18,
              leadingIconWidth: 18,
              onTap: () {
                context.pushNamed(Routes.developerProfilePaymentOptionScreen);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/logout.svg',
              text: 'Logout',
              leadingIconHeight: 17,
              leadingIconWidth: 18,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return developerProfileLogoutScreen(context);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget settingServiceRow({
    required icon,
    required text,
    required onTap,
    double? leadingIconHeight,
    double? leadingIconWidth,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 45.h,
        width: double.infinity,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: (leadingIconHeight ?? 24).h,
              width: (leadingIconWidth ?? 24).w,
              colorFilter:
                  const ColorFilter.mode(ColorsManager.dune, BlendMode.srcIn),
            ),
            horizontalSpace(8),
            Text(
              text,
              style: AppTextStyles.font14BlackPoppinsMedium,
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/svgs/keyboard_arrow_right.svg',
              height: 13.h,
              width: 4.w,
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
            )
          ],
        ),
      ),
    );
  }
}
