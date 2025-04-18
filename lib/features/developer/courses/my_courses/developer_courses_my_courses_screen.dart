import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:carrerk/features/developer/courses/my_courses/widgets/back_icon_and_my_courses_text.dart';
import 'package:carrerk/features/developer/courses/my_courses/widgets/ongoing_and_completed_tab_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperCoursesMyCoursesScreen extends StatelessWidget {
  const DeveloperCoursesMyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16..w,16.h,16.w,0.h),
              child: Column(
                children: [
                  const BackIconAndMyCoursesText(),
                  verticalSpace(32),
                  AppSearchTextFormField(
                    readOnly: false,
                    shadowColor: Colors.black.withOpacity(0.1),
                    hintText: 'Search for course',
                  ),
                ],
              ),
            ),
            verticalSpace(24),
            const OngoingAndCompletedTabSwitcher(),
          ],
        ),
      ),
    );
  }
}
