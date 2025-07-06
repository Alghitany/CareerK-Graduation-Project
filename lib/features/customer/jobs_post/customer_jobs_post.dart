import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/customer/jobs_post/widgets/jobs_post_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerJobPostScreen extends StatelessWidget {
  const CustomerJobPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                const CustomerPostJobForm(),
                verticalSpace(40),
                AppTextButton(
                    buttonText: 'Next',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
