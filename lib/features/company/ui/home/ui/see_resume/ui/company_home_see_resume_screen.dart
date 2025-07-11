import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/company/ui/home/ui/see_resume/ui/widgets/company_see_resume_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyHomeSeeResumeScreen extends StatelessWidget {
  const CompanyHomeSeeResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 36.h, 16.w, 0.h),
            child: Column(
              children: [
                Stack(
                  children: [
                    const AppBackIcon(),
                    Center(
                      child: Text(
                        'See Resume',
                        style: AppTextStyles.font24RangoonGreenPoppinsMedium,
                      ),
                    ),
                  ],
                ),
                verticalSpace(36),
                const CompanyHomeSeeResumeBlocBuilder(),
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
      ),
    );
  }
}
