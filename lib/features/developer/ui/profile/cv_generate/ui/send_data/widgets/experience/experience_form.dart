import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';

class ExperienceForm extends StatelessWidget {
  final int index;

  const ExperienceForm({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DeveloperProfileCVGenerateSendDataCubit>();
    final controllers = cubit.experienceControllers[index];

    return Column(
      children: [
        /// Position Name Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Position:"),
            const Spacer(),
            SizedBox(
              width: 230.w,
              child: AppTextFormField(
                controller: controllers['position'],
                height: 40.h,
                hintText: 'Frontend Developer',
                validator: (value) {
                  if (value.isNullOrEmpty()) {
                    return "Enter Position name";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Company Name Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Company:"),
            const Spacer(),
            SizedBox(
              width: 230.w,
              child: AppTextFormField(
                controller: controllers['company'],
                height: 40.h,
                hintText: 'Google',
                validator: (value) {
                  if (value.isNullOrEmpty()) {
                    return "Enter company name";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Achievements Row (Comma-separated)
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Achieved:"),
            const Spacer(),
            SizedBox(
              width: 230.w,
              child: AppTextFormField(
                controller: controllers['achievements'],
                height: 60.h,
                hintText: 'Achievement 1, Achievement 2...',
                keyboardType: TextInputType.multiline,
                minLines: 2,
                maxLines: 3,
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
      ],
    );
  }
}
