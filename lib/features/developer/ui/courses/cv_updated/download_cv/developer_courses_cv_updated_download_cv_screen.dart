import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_back_icon.dart';
import '../../../../../../core/widgets/app_text_button.dart';


class DeveloperCoursesCvUpdatedUpdateCvScreen extends StatelessWidget {
  const DeveloperCoursesCvUpdatedUpdateCvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //TODO: The whole folder may be refactored cause there is redundant screen
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
                'Congratulation Your CV is  Updated',
                style: AppTextStyles.font16BlackPoppinsMedium,
              ),
              verticalSpace(24),
              Image.asset(
                'assets/images/my_cv.png',
                height: 450.h,
              ),
              verticalSpace(40),
              AppTextButton(
                  buttonText: 'Download',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    //TODO: Download the pdf file to device storage and navigate
                    context.pushNamed(
                        Routes.developerCoursesCvUpdatedSuccessfulUpdateScreen);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
