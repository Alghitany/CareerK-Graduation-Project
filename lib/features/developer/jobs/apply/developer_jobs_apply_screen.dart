import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/developer/jobs/apply/widgets/job_apply_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperJobsApplyScreen extends StatelessWidget {
  const DeveloperJobsApplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w, 16.0.h, 16.0.w, 0.0.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppBackIcon(),
                verticalSpace(16),
                Text(
                  'Job Apply',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(24),
                const JobApplyForm(),
                verticalSpace(32),
                //TODO: Add validation to form
                AppTextButton(
                  onPressed: () {
                    context.pushNamed(
                        Routes.developerJobsApplicationSubmittedScreen);
                  },
                  buttonText: 'Apply',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
