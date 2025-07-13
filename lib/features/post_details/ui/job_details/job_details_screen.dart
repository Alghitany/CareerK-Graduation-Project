import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../company/logic/company_jobs_delete_post_cubit.dart';
import 'widgets/job_details_bloc_builder.dart';
import 'widgets/top_bar/back_icon_details_and_bookmark_icon.dart';

class JobDetailsScreen extends StatelessWidget {
  final String jobId;
  final bool isCompany;

  const JobDetailsScreen(
      {super.key, required this.jobId, required this.isCompany});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w, 40.0.h, 16.0.w, 0.0.h),
          child: Column(
            children: [
              BackIconDetailsAndBookmarkIcon(
                  jobId: jobId, isCompany: isCompany),
              verticalSpace(32),
              const JobDetailsBlocBuilder(),
              verticalSpace(32),
              isCompany == true
                  ? AppTextButton(
                      onPressed: () {
                        context
                            .read<CompanyJobsDeletePostCubit>()
                            .deleteJobPost(jobId, onSuccess: () {
                          context.pop();
                        });
                      },
                      backgroundColor: ColorsManager.artyClickRed,
                      buttonText: 'Delete',
                      textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    )
                  : AppTextButton(
                      onPressed: () {
                        context.pushNamed(Routes.developerJobsApplyScreen,
                            arguments: AppArgument(jobId: jobId));
                      },
                      buttonText: 'Apply',
                      textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
