import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/developer/jobs/service_details/widgets/back_and_details.dart';
import 'package:carrerk/features/developer/jobs/service_details/widgets/service_description_and_keywords.dart';
import 'package:carrerk/features/developer/jobs/service_details/widgets/service_name_bookmark_budget_and_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperJobsServiceDetailsScreen extends StatelessWidget {
  const DeveloperJobsServiceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 40.h, 16.w, 0.h),
          child: Column(
            children: [
              const BackAndDetails(),
              verticalSpace(52),
              //TODO: Pass the real data
              const ServiceNameBookmarkBudgetAndTime(),
              verticalSpace(72),
              const ServiceDescriptionAndKeywords(),
              verticalSpace(48),
              AppTextButton(
                onPressed: () {
                  context.pushNamed(Routes.developerJobsApplyScreen);
                },
                buttonText: 'Apply',
                textStyle: AppTextStyles.font14WhitePoppinsMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
