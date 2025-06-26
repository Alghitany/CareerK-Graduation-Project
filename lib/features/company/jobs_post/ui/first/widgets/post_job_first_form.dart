import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/app_regex.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_drop_down_menu.dart';
import '../../../../../../core/widgets/app_label.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../../logic/company_jobs_post_cubit.dart';

class PostJobFirstForm extends StatefulWidget {
  const PostJobFirstForm({super.key});

  @override
  State<PostJobFirstForm> createState() => _PostJobFirstFormState();
}

class _PostJobFirstFormState extends State<PostJobFirstForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CompanyJobsPostCubit>().companyJobsPostFirstFormKey,
      child: Column(
        children: [
          const AppLabel(
            text: 'Job Title',
          ),
          verticalSpace(8),
          AppTextFormField(
              controller:
                  context.read<CompanyJobsPostCubit>().jobTitleController,
              hintText: "Front end Developer",
              validator: (jobTitle) {
                if (!AppRegex.isValidName(jobTitle!)) {
                  return 'Please enter a valid title';
                }
                return null;
              }),
          verticalSpace(16),
          const AppLabel(
            text: 'Job Description',
          ),
          verticalSpace(8),
          AppTextFormField(
              controller:
                  context.read<CompanyJobsPostCubit>().jobDescriptionController,
              hintText: "Enter job details",
              height: 92.h,
              maxLines: 3,
              validator: (jobDescription) {
                if (!AppRegex.isValidMessage(jobDescription!)) {
                  return 'Please enter a valid description';
                }
                return null;
              }),
          verticalSpace(16),
          const AppLabel(
            text: 'Job Type',
          ),
          verticalSpace(8),
          AppDropDownMenu(
            controller: context.read<CompanyJobsPostCubit>().jobTypeController,
            hintText: 'Full Time',
            items: <String>['Part Time', 'Full Time']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
            validator: (jobType) {
              if (jobType.isNullOrEmpty()) {
                return 'Please enter a valid job type';
              }
              return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Job Location'),
          verticalSpace(8),
          AppTextFormField(
              controller:
                  context.read<CompanyJobsPostCubit>().locationController,
              hintText: 'Cairo, Egypt',
              validator: (location) {
                if (!AppRegex.isValidLocation(location!)) {
                  return 'Please enter a valid location';
                }
                return null;
              }),
          verticalSpace(16),
          const AppLabel(text: 'Price Range'),
          verticalSpace(8),
          AppTextFormField(
              controller:
                  context.read<CompanyJobsPostCubit>().salaryRangeController,
              hintText: '1000 - 5000\$',
              validator: (price) {
                if (!AppRegex.isValidPriceRange(price!)) {
                  return "Please enter a valid Price";
                }
                return null;
              }),
        ],
      ),
    );
  }
}
