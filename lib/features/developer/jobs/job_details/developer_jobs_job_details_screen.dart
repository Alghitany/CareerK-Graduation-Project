import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/developer/jobs/job_details/widgets/back_icon_details_and_bookmark_icon.dart';
import 'package:carrerk/features/developer/jobs/job_details/widgets/coin_icon_and_salary.dart';
import 'package:carrerk/features/developer/jobs/job_details/widgets/job_description.dart';
import 'package:carrerk/features/developer/jobs/job_details/widgets/job_name_location_type_post_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperJobsJobDetailsScreen extends StatelessWidget {
  const DeveloperJobsJobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w, 40.0.h, 16.0.w, 0.0.h),
          child: Column(
            children: [
              const BackIconDetailsAndBookmarkIcon(),
              verticalSpace(32),
              const JobNameLocationTypePostDate(),
              verticalSpace(40),
              const CoinIconAndSalary(),
              verticalSpace(40),
              const JobDescription(),
              verticalSpace(32),
              AppTextButton(
                onPressed: () {
                  context.pushNamed(
                      Routes.developerJobsApplyScreen,
                      arguments: AppArgument(
                          jobId: '3ee6eb6f-163c-4841-9132-e2ad8e21df4a'
                      )
                  );

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
