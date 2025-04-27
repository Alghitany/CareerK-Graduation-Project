import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';

class DeveloperSignUpCompletedReadyToGo extends StatelessWidget {
  const DeveloperSignUpCompletedReadyToGo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
            child: const AppBackIcon(),
          ),
          Image.asset(
            'assets/images/ready_to_go.png',
          ),
          verticalSpace(48),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0.w),
            child: Column(
              children: [
                Text(
                  'You are ready to go',
                  style: AppTextStyles.font30MountainMistPoppinsMedium,
                ),
                verticalSpace(40),
                AppTextButton(
                  buttonText: 'Start Journey',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    context.pushNamed(Routes.developerHomeMainPageScreen);
                  },
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
