import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/features/developer/profile/jobs_applied/widgets/applied_jobs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperProfileJobsAppliedScreen extends StatelessWidget {
  const DeveloperProfileJobsAppliedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
            child: Column(
              children: [
                const AppBackIcon(),
                Text(
                  'Job Applied',
                  style: AppTextStyles
                      .font24SecondaryWildBlueYonderPoppinsSemiBold,
                ),
                verticalSpace(32),
                //TODO: Refactoring this container should be done
                //TODO: I FORGET TO SWITCH BRANCHES SORRY UWU :)
                const AppliedJobsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
