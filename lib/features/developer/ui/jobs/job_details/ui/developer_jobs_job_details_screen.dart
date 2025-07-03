import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/developer_jobs_job_details_bloc_builder.dart';
import 'widgets/top_bar/back_icon_details_and_bookmark_icon.dart';

class DeveloperJobsJobDetailsScreen extends StatelessWidget {
  final String jobId;

  const DeveloperJobsJobDetailsScreen({super.key, required this.jobId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w, 40.0.h, 16.0.w, 0.0.h),
          child: Column(
            children: [
              BackIconDetailsAndBookmarkIcon(jobId: jobId),
              verticalSpace(32),
              const DeveloperJobsJobDetailsBlocBuilder(),
              verticalSpace(32),
              AppTextButton(
                onPressed: () {
                  context.pushNamed(Routes.developerJobsApplyScreen,
                      arguments: AppArgument(jobId: jobId));
                },
                buttonText: 'Apply',
                textStyle: AppTextStyles.font14WhitePoppinsMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
