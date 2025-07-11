import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_tab_switcher.dart';
import 'widgets/bookmarked_courses_bloc_builder.dart';
import 'widgets/bookmarked_jobs_bloc_builder.dart';
import 'widgets/bookmarked_services_bloc_builder.dart';

class DeveloperProfileBookmarksScreen extends StatefulWidget {
  const DeveloperProfileBookmarksScreen({super.key});

  @override
  State<DeveloperProfileBookmarksScreen> createState() =>
      _DeveloperProfileBookmarksScreenState();
}

class _DeveloperProfileBookmarksScreenState
    extends State<DeveloperProfileBookmarksScreen> {
  int currentTabIndex = 0;

  void switchToLecturesTab() {
    setState(() {
      currentTabIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
            child: Column(
              children: [
                Stack(
                  children: [
                    const AppBackIcon(),
                    Center(
                      child: Text(
                        "Bookmarks",
                        style: AppTextStyles.font24DunePoppinsMedium,
                      ),
                    )
                  ],
                ),
                verticalSpace(16),
                //TODO: Maybe the job container can be reusable component
                AppTabSwitcher(
                  tabs: const ['Jobs', 'Services', 'Courses'],
                  selectedIndex: currentTabIndex,
                  onTabChanged: (newIndex) {
                    setState(() {
                      currentTabIndex = newIndex;
                    });
                  },
                  option0: const BookmarkedJobsBlocBuilder(),
                  option1: const BookmarkedServicesBlocBuilder(),
                  option2: const BookmarkedCoursesBlocBuilder(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
