import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/profile_picture_name_and_mail.dart';
import 'widgets/settings_options_list.dart';

class DeveloperProfileSettingsScreen extends StatelessWidget {
  const DeveloperProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.magnolia,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 0.h),
          child: Column(
            children: [
              const AppBackIcon(
                iconPath: 'assets/svgs/exit.svg',
                alignment: Alignment.centerRight,
              ),
              verticalSpace(24),
              const ProfilePictureNameAndMail(),
              verticalSpace(16),
              const SettingsOptionsList(),
            ],
          ),
        ),
      ),
    );
  }
}
