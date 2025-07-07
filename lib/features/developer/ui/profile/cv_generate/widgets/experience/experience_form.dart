// widgets/experience_form/experience_form.dart

import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceForm extends StatelessWidget {
  const ExperienceForm({super.key});

  @override
  Widget build(BuildContext context) {
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

        /// Achievements Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Achieved:"),
            const Spacer(),
            SizedBox(
              width: 230.w,
              child: AppTextFormField(
                height: 60.h,
                hintText: 'Enter your achievements...',
                keyboardType: TextInputType.multiline,
                minLines: 2,
                maxLines: 3,
                validator: (skills) {
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Start Date & End Date Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Start:"),
            const Spacer(),
            SizedBox(
              width: 100.w,
              child: AppTextFormField(
                height: 40.h,
                hintText: '2020',
                validator: (value) {
                  if (value.isNullOrEmpty()) {
                    return "Enter start date";
                  }
                  return null;
                },
              ),
            ),
            horizontalSpace(12),
            const AppLabel(text: "End:"),
            const Spacer(),
            SizedBox(
              width: 100.w,
              child: AppTextFormField(
                height: 40.h,
                hintText: '2023',
                validator: (value) {
                  if (value.isNullOrEmpty()) {
                    return "Enter end date";
                  }
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
