import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/company/jobs_post/first/widgets/post_job_first_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyJobPostFirstScreen extends StatelessWidget {
  const CompanyJobPostFirstScreen({super.key});

  @override
  //TODO: Try to change name of this screen it is a little bit strange.
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
              const PostJobFirstForm(),
              verticalSpace(40),
              AppTextButton(
                  buttonText: 'Next',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    context.pushNamed(Routes.companyJobPostSecondScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
