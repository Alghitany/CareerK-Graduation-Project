import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_back_icon.dart';

class DeveloperSignUpCompletedCvIsDone extends StatelessWidget {
  const DeveloperSignUpCompletedCvIsDone({super.key});

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
                'My CV',
                style: AppTextStyles.font24DunePoppinsMedium,
              ),
              verticalSpace(16),
              Text(
                'Congratulation Your CV is  Done',
                style: AppTextStyles.font16BlackPoppinsMedium,
              ),
              verticalSpace(24),
              Image.asset(
                'assets/images/my_cv.png',
                height: 400.h,
              ),
              verticalSpace(40),
              AppTextButton(
                  buttonText: 'Download',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    //TODO: Download the pdf file to device storage and navigate
                    context
                        .pushNamed(Routes.developerSignUpCompletedCvDownloaded);
                  }),
              verticalSpace(28),
              AppTextButton(
                  buttonText: 'Update',
                  textStyle:
                      AppTextStyles.font14PrimaryWildBlueYonderPoppinsMedium,
                  backgroundColor: Colors.white,
                  borderColor: ColorsManager.duskyBlue,
                  onPressed: () {
                    /*TODO: Update the cv and apply modifications on file ,
                        we should know how and it doesn't have any screens*/
                  })
            ],
          ),
        ),
      ),
    );
  }
}
