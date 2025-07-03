import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyHomeSeeResumeScreen extends StatelessWidget {
  const CompanyHomeSeeResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 64.h, 16.w, 0.h),
          child: Column(
            children: [
              Text(
                'See Resume',
                style: AppTextStyles.font24RangoonGreenPoppinsMedium,
              ),
              verticalSpace(56),
              Image.asset(
                'assets/images/my_cv.png',
                width: double.infinity,
                height: 406.h,
              ),
              verticalSpace(72),
              AppTextButton(
                  buttonText: 'Back',
                  textStyle: AppTextStyles.font14WhitePoppinsSemiBold,
                  onPressed: () {
                    context.pop();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
