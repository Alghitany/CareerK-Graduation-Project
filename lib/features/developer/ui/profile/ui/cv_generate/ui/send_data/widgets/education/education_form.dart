import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';

class EducationForm extends StatelessWidget {
  final int index;

  const EducationForm({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DeveloperProfileCVGenerateSendDataCubit>();
    final controllers = cubit.educationControllers[index];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// School/University Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Institution:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                controller: controllers['institution'],
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'Harvard University',
                validator: (value) {
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Field of Study Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Field of Study:"),
            const Spacer(),
            SizedBox(
              width: 200.w,
              child: AppTextFormField(
                controller: controllers['field'],
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'Software Engineering',
                validator: (value) {
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Start Year & End Year Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Start Year:"),
            const Spacer(),
            SizedBox(
              width: 70.w,
              child: AppTextFormField(
                controller: controllers['startDate'],
                height: 40.h,
                keyboardType: TextInputType.number,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: '2018',
                validator: (value) {
                  return null;
                },
              ),
            ),
            horizontalSpace(12),
            const AppLabel(text: "End Year:"),
            const Spacer(),
            SizedBox(
              width: 70.w,
              child: AppTextFormField(
                controller: controllers['endDate'],
                height: 40.h,
                keyboardType: TextInputType.number,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: '2022',
                validator: (value) {
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Degree & GPA Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Degree:"),
            const Spacer(),
            SizedBox(
              width: 140.w,
              child: AppTextFormField(
                controller: controllers['degree'],
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'BSc CS',
                validator: (value) {
                  return null;
                },
              ),
            ),
            horizontalSpace(12),
            const AppLabel(text: "GPA:"),
            const Spacer(),
            SizedBox(
              width: 55.w,
              child: AppTextFormField(
                controller: controllers['gpa'],
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: '3.8',
                validator: (value) {
                  return null;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
