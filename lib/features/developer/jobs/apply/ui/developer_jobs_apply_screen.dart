import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/developer_jobs_apply_cubit.dart';
import 'widgets/job_apply_form.dart';
import 'widgets/jobs_apply_bloc_listener.dart';

class DeveloperJobsApplyScreen extends StatelessWidget {
  final String jobId;
  const DeveloperJobsApplyScreen({super.key, required this.jobId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w, 16.0.h, 16.0.w, 0.0.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppBackIcon(),
                verticalSpace(16),
                Text(
                  'Job Apply',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(24),
                const JobApplyForm(),
                verticalSpace(32),
                //TODO: Add validation to form
                AppTextButton(
                  onPressed: () {
                    validateThenDoSignup(context,jobId);
                  },
                  buttonText: 'Apply',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                ),
                const JobsApplyBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void validateThenDoSignup(BuildContext context,String jobId) {
    if (context
        .read<DeveloperJobsApplyCubit>()
        .jobApplicationFormKey
        .currentState!
        .validate()) {
      context.read<DeveloperJobsApplyCubit>().applyToJob(jobId);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Job Application Failed, Wrong Info!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}