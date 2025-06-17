import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeveloperSignUpCompletedCvDownloaded extends StatelessWidget {
  const DeveloperSignUpCompletedCvDownloaded({super.key});

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
                'CV Downloaded successfully',
                style: AppTextStyles.font16DarkJungleGreenPoppinsBold,
              ),
              verticalSpace(40),
              AppTextButton(
                buttonHeight: 48,
                buttonWidth: 127,
                backgroundColor: ColorsManager.duskyBlue,
                onPressed: () {
                  context.pushNamed(Routes.developerSignUpCompletedReadyToGo);
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
