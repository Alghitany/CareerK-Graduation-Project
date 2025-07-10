import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../../../core/routing/routes.dart';
import 'widgets/developer_generated_cv_bloc_builder.dart';

class DeveloperProfileCvGeneratedViewScreen extends StatelessWidget {
  final String sessionId;

  const DeveloperProfileCvGeneratedViewScreen(
      {super.key, required this.sessionId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 36.h, 16.w, 0.h),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'See Resume',
                    style: AppTextStyles.font24RangoonGreenPoppinsMedium,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {
                          context
                              .pushNamed(Routes.developerProfileMainPageScreen);
                        },
                        icon: SvgPicture.asset('assets/svgs/exit.svg')),
                  ),
                ],
              ),
              verticalSpace(36),
              const DeveloperGeneratedCVBlocBuilder(),
              verticalSpace(52),
              AppTextButton(
                  buttonText: 'Back',
                  textStyle: AppTextStyles.font14WhitePoppinsSemiBold,
                  onPressed: () {
                    context.pop();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
