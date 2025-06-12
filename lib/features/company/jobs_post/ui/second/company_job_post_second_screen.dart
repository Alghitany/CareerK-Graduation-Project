import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/company/jobs_post/logic/company_jobs_post_cubit.dart';
import 'package:carrerk/features/company/jobs_post/ui/second/widgets/post_job_second_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_back_icon.dart';
import '../../data/models/company_jobs_post_request_body.dart';


class CompanyJobPostSecondScreen extends StatelessWidget {
  const CompanyJobPostSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
            child: Column(
              children: [
                const AppBackIcon(),
                verticalSpace(8),
                Text(
                  'Post a job',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(16),
                const PostJobSecondForm(),
                verticalSpace(40),
                AppTextButton(
                    buttonText: 'Next',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: () {
                      validateThenDoJobPost(context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
  void validateThenDoJobPost(BuildContext context) {
    final cubit = context.read<CompanyJobsPostCubit>();

    if (cubit.companyJobsPostSecondFormKey.currentState!.validate()) {
      final requestBody = CompanyJobsPostRequestBody(
        title: cubit.jobTitleController.text,
        jobDescription: cubit.jobDescriptionController.text,
        jobType: cubit.jobTypeController.text,
        location: cubit.locationController.text,
        salaryRange: cubit.salaryRangeController.text,
        deadlineTask: cubit.deadlineTaskController.text,
        skills: cubit.getSelectedSkills(),
        experienceRequired: cubit.experienceRequiredController.text,
        companyDepartment: cubit.companyDepartmentController.text,
        jobAvailability: cubit.jobAvailabilityController.text,
      );

      cubit.postJob(requestBody);
    }
  }

}
