import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperJobsApplicationSubmittedScreen extends StatelessWidget {
  const DeveloperJobsApplicationSubmittedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 144.h,
                width: 144.w,
                decoration: const BoxDecoration(
                    color: ColorsManager.cloverGreen, shape: BoxShape.circle),
                child: Padding(
                  padding: EdgeInsets.all(40.0.h),
                  child: Image.asset(
                    'assets/images/application_submitted.png',
                    fit: BoxFit.contain,
                  ),
                )),
            verticalSpace(40),
            Text(
              '"Application Submitted successfully."',
              style: AppTextStyles.font24DunePoppinsSemiBold,
              textAlign: TextAlign.center,
            ),
            verticalSpace(40),
            AppTextButton(
              onPressed: () {
                context.pushNamed(Routes.developerHomeMainPageScreen);
              },
              buttonText: 'Explore Jobs',
              textStyle: AppTextStyles.font18WhitePoppinsMedium,
              backgroundColor: ColorsManager.duskyBlue,
              buttonWidth: 169.w,
              buttonHeight: 52.h,
              borderRadius: 12.r,
            ),
          ],
        ),
      ),
    );
  }
}
