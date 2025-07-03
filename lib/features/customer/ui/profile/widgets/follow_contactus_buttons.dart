import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowContactusButtons extends StatelessWidget {
  const FollowContactusButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextButton(
          verticalPadding: 10.h,
          buttonHeight: 25.h,
          buttonWidth: 100.w,
          backgroundColor: ColorsManager.primaryWildBlueYonder,
          borderColor: ColorsManager.primaryWildBlueYonder,
          borderRadius: 12.r,
          buttonText: 'Follow',
          textStyle: AppTextStyles.font11WhitePoppinsMedium,
          onPressed: () {},
        ),
        horizontalSpace(38),
        AppTextButton(
          verticalPadding: 10.h,
          buttonHeight: 25.h,
          buttonWidth: 100.w,
          backgroundColor: Colors.white,
          borderColor: ColorsManager.primaryWildBlueYonder,
          borderRadius: 12.r,
          buttonText: 'Contact Us ',
          textStyle: AppTextStyles.font11DuskyBluePoppinsMedium,
          onPressed: () {},
        ),
      ],
    );
  }
}
