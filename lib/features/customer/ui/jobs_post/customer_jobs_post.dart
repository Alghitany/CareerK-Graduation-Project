import 'package:carrerk/core/helpers/spacing.dart';

import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';

import 'package:carrerk/features/customer/data/models/customer_jobs_post_request_body.dart';
import 'package:carrerk/features/customer/logic/customer_jobs_post_cubit.dart';
import 'package:carrerk/features/customer/ui/jobs_post/widgets/jobs_post_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerJobPostScreen extends StatelessWidget {
  const CustomerJobPostScreen({super.key});

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
                const CustomerPostJobForm(),
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
    final cubit = context.read<CustomerJobsPostCubit>();
    if (cubit.customerJobsPostFormKey.currentState!.validate()) {
      final requestBody = CustomerJobsPostRequestBody(
        contactInfo: "",
        title: cubit.taskTitleController.text,
        description: cubit.taskDescriptionController.text,
        budgetRange: cubit.priceRangeController.text,
        deadline: cubit.deadlineTaskController.text,
        requiredSkills: cubit.getSelectedSkills(),
        serviceType: cubit.experienceLevelController.text,
      );

      cubit.postJob(requestBody);
    }
  }
}
