import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/developer_details.dart';
import 'widgets/name_title_and_image.dart';
import 'widgets/salary_and_location.dart';
import 'widgets/see_details_top_bar.dart';

class CompanyHomeSeeDetailsScreen extends StatelessWidget {
  const CompanyHomeSeeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w, 24.h, 16.0.w, 0.h),
          child: Column(
            children: [
              const SeeDetailsTopBar(),
              verticalSpace(56),
              const NameTitleAndImage(),
              verticalSpace(64),
              const SalaryAndLocation(),
              verticalSpace(40),
              const DeveloperDetails(),
              AppTextButton(
                  buttonText: 'Hire',
                  backgroundColor: ColorsManager.primaryWildBlueYonder,
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    context.pushNamed(Routes.companySendToClientsScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
