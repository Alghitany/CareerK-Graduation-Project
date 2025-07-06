import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/routing/app_argument.dart';
import 'widgets/developer_jobs_service_details_bloc_builder.dart';
import 'widgets/service_details/back_and_details.dart';

class DeveloperJobsServiceDetailsScreen extends StatelessWidget {
  final String serviceId;

  const DeveloperJobsServiceDetailsScreen({super.key, required this.serviceId});

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
              const DeveloperJobsServiceDetailsBlocBuilder(),
              verticalSpace(48),
              AppTextButton(
                onPressed: () {
                  context.pushNamed(Routes.developerJobsApplyScreen,
                      arguments: AppArgument(jobId: serviceId));
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
