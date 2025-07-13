import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/developer_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/developer_profile_main_page_info_bloc_builder.dart';
import 'widgets/developer_profile_main_page_skills_progress_bloc_builder.dart';

class DeveloperProfileMainPageScreen extends StatelessWidget {
  const DeveloperProfileMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const DeveloperBottomNavigationBar(
        selectedIndex: 3,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const DeveloperProfileMainPageInfoBlocBuilder(),
                verticalSpace(16),
                const DeveloperProfileMainPageSkillsProgressBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
