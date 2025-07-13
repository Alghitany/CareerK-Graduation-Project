import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';
import '../../../../../../../core/widgets/app_drop_down_menu.dart';
import '../../../../../../../core/widgets/app_label.dart';
import '../../../../../../../core/widgets/app_text_form_field.dart';
import '../../../logic/customer_jobs_post_cubit.dart';

class CustomerPostJobForm extends StatefulWidget {
  const CustomerPostJobForm({super.key});

  @override
  State<CustomerPostJobForm> createState() => _CustomerPostJobFormState();
}

class _CustomerPostJobFormState extends State<CustomerPostJobForm> {
  late CustomerJobsPostCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<CustomerJobsPostCubit>();
    if (cubit.skillsControllers.isEmpty) {
      cubit.addSkillField(); // Ensure at least one skill field
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cubit.customerJobsPostFormKey,
      child: Column(
        children: [
          const AppLabel(text: 'Task Title'),
          verticalSpace(8),
          AppTextFormField(
            controller: cubit.taskTitleController,
            hintText: "Front end Developer",
            validator: (title) {
              if (!AppRegex.isValidName(title!)) {
                return 'Please enter a valid title';
              }
              return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Task Description'),
          verticalSpace(8),
          AppTextFormField(
            controller: cubit.taskDescriptionController,
            hintText: "Enter job details",
            height: 92.h,
            maxLines: 3,
            validator: (description) {
              if (!AppRegex.isValidMessage(description!)) {
                return 'Please enter a valid description';
              }
              return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Skills Required'),
          verticalSpace(8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cubit.skillsControllers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.0.h),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextFormField(
                        controller: cubit.skillsControllers[index],
                        hintText: "Add Skill",
                        validator: (skill) {
                          if (!AppRegex.isValidName(skill!)) {
                            return "Enter a valid skill";
                          }
                          return null;
                        },
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (cubit.skillsControllers.length > 1)
                              Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: InkWell(
                                  onTap: () => setState(() {
                                    cubit.removeSkillField(index);
                                  }),
                                  child: const Icon(
                                    Icons.remove,
                                    color: ColorsManager.pastelGrey,
                                  ),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: InkWell(
                                onTap: () => setState(() {
                                  cubit.addSkillField();
                                }),
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
          const AppLabel(text: 'Experience Level'),
          verticalSpace(8),
          AppDropDownMenu(
            controller: cubit.experienceLevelController,
            hintText: 'Midlevel',
            items: ['Junior', 'Midlevel', 'Senior']
                .map((level) => DropdownMenuItem<String>(
                      value: level,
                      child: Text(level,
                          style: AppTextStyles.font14BlackPoppinsRegular),
                    ))
                .toList(),
            validator: (level) {
              if (level.isNullOrEmpty()) {
                return 'Please enter a valid experience level';
              }
              return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Price Range'),
          verticalSpace(8),
          AppTextFormField(
            controller: cubit.priceRangeController,
            hintText: '1000 - 5000\$',
            validator: (price) {
              if (!AppRegex.isValidPriceRange(price!)) {
                return "Please enter a valid price range";
              }
              return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Deadline Task'),
          verticalSpace(8),
          AppTextFormField(
            controller: cubit.deadlineTaskController,
            hintText: '2025-07-01',
            validator: (date) {
              if (!AppRegex.isValidDate(date!)) {
                return "Please enter a valid deadline";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
