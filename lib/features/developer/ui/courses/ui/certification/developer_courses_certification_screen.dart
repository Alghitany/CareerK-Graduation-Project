import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/certification_top_bar.dart';

class DeveloperCoursesCertificationScreen extends StatelessWidget {
  const DeveloperCoursesCertificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
          child: Column(
            children: [
              const CertificationTopBar(),
              verticalSpace(32),
              Text(
                'Congrats Certification is  Done',
                style: AppTextStyles.font16BlackPoppinsMedium,
              ),
              verticalSpace(24),
              Image.asset(
                'assets/images/certification.png',
                height: 406.h,
                width: 343.w,
                fit: BoxFit.cover,
              ),
              verticalSpace(32),
              AppTextButton(
                onPressed: () {
                  //TODO: No screen for it probably the cv will be downloaded.
                  //context.pushNamed(Routes.developerCoursesCvUpdatedDownloadCvScreen);
                },
                buttonText: 'Download',
                textStyle: AppTextStyles.font14WhitePoppinsSemiBold,
              ),
              verticalSpace(16),
              AppTextButton(
                onPressed: () {
                  context.pushNamed(
                      Routes.developerCoursesCvUpdatedUpdateCvScreen);
                },
                buttonText: 'Update CV',
                textStyle: AppTextStyles.font14PrimaryWildBlueYonderPoppinsBold,
                backgroundColor: Colors.white,
                borderColor: ColorsManager.duskyBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
