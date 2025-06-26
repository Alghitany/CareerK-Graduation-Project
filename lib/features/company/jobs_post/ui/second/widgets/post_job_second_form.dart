import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/helpers/app_regex.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_drop_down_menu.dart';
import '../../../../../../core/widgets/app_label.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../../logic/company_jobs_post_cubit.dart';

class PostJobSecondForm extends StatefulWidget {
  const PostJobSecondForm({super.key});

  @override
  State<PostJobSecondForm> createState() => _PostJobSecondFormState();
}

class _PostJobSecondFormState extends State<PostJobSecondForm> {
  late CompanyJobsPostCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<CompanyJobsPostCubit>();
    if (cubit.selectedSkillsControllers.isEmpty) {
      cubit.addSkillField(); // Add initial field
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CompanyJobsPostCubit>().companyJobsPostSecondFormKey,
      child: Column(
        children: [
          const AppLabel(text: 'Skills Required'),
          verticalSpace(8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cubit.selectedSkillsControllers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.0.h),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextFormField(
                        controller: cubit.selectedSkillsControllers[index],
                        hintText: "Add Skills",
                        validator: (skills) {
                          if (!AppRegex.isValidName(skills!)) {
                            return "Enter a valid skills";
                          }
                          return null;
                        },
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            cubit.selectedSkillsControllers.length > 1
                                ? Padding(
                                    padding: EdgeInsets.only(right: 10.0.w),
                                    child: InkWell(
                                      onTap: () =>
                                          cubit.removeSkillField(index),
                                      child: const Icon(
                                        Icons.remove,
                                        color: ColorsManager.pastelGrey,
                                      ),
                                    ),
                                  )
                                : const SizedBox
                                    .shrink(), // Empty widget if no remove button
                            Padding(
                              padding: EdgeInsets.only(right: 10.0.w),
                              child: InkWell(
                                onTap: () =>
                                    setState(() => cubit.addSkillField()),
                                child: SizedBox(
                                  height: 15.h,
                                  width: 15.w,
                                  child:
                                      SvgPicture.asset('assets/svgs/add.svg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Enter Experience Level'),
          verticalSpace(8),
          AppDropDownMenu(
            controller: context
                .read<CompanyJobsPostCubit>()
                .experienceRequiredController,
            hintText: 'Midlevel',
            items: <String>['Junior', 'Midlevel', 'Senior']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
            validator: (experienceLevel) {
              if (experienceLevel.isNullOrEmpty()) {
                return 'Please enter a valid experience level';
              }
              return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Company Department'),
          verticalSpace(8),
          AppDropDownMenu(
            controller: context
                .read<CompanyJobsPostCubit>()
                .companyDepartmentController,
            hintText: 'IT',
            items: <String>['IT', 'Software Engineering', 'Medical']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
            validator: (companyDepartment) {
              if (companyDepartment.isNullOrEmpty()) {
                return 'Please enter a valid Company Department';
              }
              return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Job Availability'),
          verticalSpace(8),
          AppDropDownMenu(
            controller:
                context.read<CompanyJobsPostCubit>().jobAvailabilityController,
            hintText: 'Remotely',
            items: <String>['Remotely', 'Hybrid', 'In-Site']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
            validator: (jobAvailability) {
              if (jobAvailability.isNullOrEmpty()) {
                return 'Please enter a valid job availability';
              }
              return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Deadline Task'),
          verticalSpace(8),
          AppTextFormField(
              controller:
                  context.read<CompanyJobsPostCubit>().deadlineTaskController,
              hintText: '2025-07-01',
              validator: (time) {
                if (!AppRegex.isValidDate(time!)) {
                  return "Please enter a valid time";
                }
                return null;
              }),
        ],
      ),
    );
  }
}
