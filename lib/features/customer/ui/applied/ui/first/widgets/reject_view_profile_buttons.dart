import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RemoveViewProfileButtons extends StatelessWidget {
  final VoidCallback onRemove;
  final String applicationId;

  const RemoveViewProfileButtons({
    super.key,
    required this.onRemove,
    required this.applicationId,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextButton(
          verticalPadding: 10.h,
          buttonHeight: 25.h,
          buttonWidth: 100.w,
          backgroundColor: Colors.white,
          borderColor: ColorsManager.primaryWildBlueYonder,
          borderRadius: 12.r,
          buttonText: 'Reject',
          textStyle: AppTextStyles.font11DuskyBluePoppinsMedium,
          onPressed: () {
            print("✅ Reject pressed for $applicationId , button");
            onRemove();
          },
        ),
        horizontalSpace(38),
        AppTextButton(
          verticalPadding: 10.h,
          buttonHeight: 25.h,
          buttonWidth: 100.w,
          backgroundColor: ColorsManager.primaryWildBlueYonder,
          borderColor: ColorsManager.primaryWildBlueYonder,
          borderRadius: 12.r,
          buttonText: 'View Profile',
          textStyle: AppTextStyles.font11WhitePoppinsMedium,
          onPressed: () {
            print("application ID : $applicationId");
            context.pushNamed(
              Routes.customerAppliedSecoundScreen,
              arguments: AppArgument(applicationId: applicationId),
            );
          },
        ),
      ],
    );
  }
}
