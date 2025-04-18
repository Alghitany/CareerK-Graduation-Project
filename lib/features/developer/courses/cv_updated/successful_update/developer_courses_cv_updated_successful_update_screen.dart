import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_back_icon.dart';
import '../../../../../core/widgets/app_text_button.dart';

class DeveloperCoursesCvUpdatedSuccessfulUpdateScreen extends StatelessWidget {
  const DeveloperCoursesCvUpdatedSuccessfulUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(104),
              Image.asset(
                'assets/images/cv_downloaded.png',
                height: 250.h,
                width: 250.w,
              ),
              verticalSpace(40),
              Text(
                'CV Updated successfully',
                style: AppTextStyles.font16DarkJungleGreenPoppinsBold,
              ),
              verticalSpace(40),
              AppTextButton(
                buttonHeight: 48,
                buttonWidth: 127,
                backgroundColor: ColorsManager.duskyBlue,
                onPressed: () {
                  //TODO: Need to know where it will go
                  //context.pushNamed(Routes.developerSignUpCompletedReadyToGo);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Keeps the row compact
                  children: [
                    Text(
                      'Back',
                      style: AppTextStyles.font16WhitePoppinsBold,
                    ),
                    horizontalSpace(8),
                    SvgPicture.asset(
                      'assets/svgs/right_arrow.svg',
                      height: 17.h,
                      width: 17.w,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
