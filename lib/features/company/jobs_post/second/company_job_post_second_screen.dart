import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/company/jobs_post/second/widgets/post_job_second_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_back_icon.dart';

class CompanyJobPostSecondScreen extends StatelessWidget {
  const CompanyJobPostSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(8),
              Text(
                'Post a job',
                style: AppTextStyles.font24DunePoppinsMedium,
              ),
              verticalSpace(16),
              const PostJobSecondForm(),
              verticalSpace(40),
              AppTextButton(
                  buttonText: 'Next',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    context.pushNamed(Routes.companyJobPostSuccessScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
