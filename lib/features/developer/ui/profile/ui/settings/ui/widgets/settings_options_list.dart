import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../core/helpers/constants.dart';
import '../../../../../../../../core/helpers/shared_pref_helper.dart';
import '../../../../../../../../core/routing/routes.dart';
import '../../../logout/developer_profile_logout_screen.dart';
import '../../logic/developer_generate_cv_start_session_logic/developer_generate_cv_start_session_cubit.dart';

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
                context.pushNamed(Routes.developerProfileMyCVScreen);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/gemini_ai.svg',
              text: 'Generate CV with AI',
              leadingIconHeight: 20,
              leadingIconWidth: 20,
              horizontalSpaceValue: 4,
              onTap: () {
                context
                    .read<DeveloperGenerateCVStartSessionCubit>()
                    .startCVSession();
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/bookmark_outlined.svg',
              text: 'Bookmarks',
              leadingIconHeight: 18,
              leadingIconWidth: 15,
              onTap: () {
                context.pushNamed(Routes.developerProfileBookmarksScreen);
              },
            ),
            settingServiceRow(
              icon: 'assets/svgs/job.svg',
              text: 'Job Applied',
              leadingIconHeight: 20,
              leadingIconWidth: 17,
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
              icon: 'assets/svgs/chat_bot.svg',
              text: 'Chat with AI',
              leadingIconHeight: 21.5,
              leadingIconWidth: 18,
              onTap: () async {
                final navigator = Navigator.of(context);
                final userId = await SharedPrefHelper.getSecuredString(
                    SharedPrefKeys.userId);
                navigator.pushNamed(
                  Routes.chatBotScreen,
                  arguments: AppArgument(developerId: userId),
                );
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

  Widget settingServiceRow(
      {required icon,
      required text,
      required onTap,
      double? leadingIconHeight,
      double? leadingIconWidth,
      double horizontalSpaceValue = 8}) {
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
            horizontalSpace(horizontalSpaceValue),
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
