import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/company/jobs_post/success/widgets/job_post_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class CompanyJobPostSuccessScreen extends StatelessWidget {
  const CompanyJobPostSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(16),
              Text(
                'Job Details',
                style: AppTextStyles.font24DunePoppinsMedium,
              ),
              verticalSpace(40),
              const JobPostReview(),
              verticalSpace(78),
              Image.asset("assets/images/verified_successfully.png",
                  height: 150.h, width: 150.w),
              verticalSpace(24),
              Text(
                'Job Posted',
                style: AppTextStyles.font20BlackPoppinsMedium,
              ),
              verticalSpace(16),
              Text(
                'Now you can see the applier Resume\nand invite them.',
                style: AppTextStyles.font14IronSideGreyPoppinsMedium,
                textAlign: TextAlign.center,
              ),
              verticalSpace(64),
              AppTextButton(
                  buttonText: 'See All',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    context.pushNamed(Routes.companyJobsScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
