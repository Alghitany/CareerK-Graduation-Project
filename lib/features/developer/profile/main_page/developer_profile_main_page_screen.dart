import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_bottom_navigation_bar.dart';
import 'package:carrerk/features/developer/profile/main_page/widgets/name_and_title.dart';
import 'package:carrerk/features/developer/profile/main_page/widgets/phone_message_and_location_icons.dart';
import 'package:carrerk/features/developer/profile/main_page/widgets/profile_top_bar.dart';
import 'package:carrerk/features/developer/profile/main_page/widgets/skills_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperProfileMainPageScreen extends StatelessWidget {
  const DeveloperProfileMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(
        selectedIndex: 3,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ProfileTopBar(),
                verticalSpace(16),
                //TODO: Pass real name and title
                const NameAndTitle(),
                verticalSpace(16),
                const PhoneMessageAndLocationIcons(),
                verticalSpace(16),
                const SkillsProgress(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
