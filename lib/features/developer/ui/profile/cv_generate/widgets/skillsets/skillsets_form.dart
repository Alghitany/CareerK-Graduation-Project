import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/helpers/spacing.dart';

class SkillsetsForm extends StatelessWidget {
  const SkillsetsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Skills Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 320.w,
              child: AppTextFormField(
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'Programming Languages (e.g., Dart, Kotlin)',
                validator: (link) {
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 320.w,
              child: AppTextFormField(
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'Tools & Technologies (e.g., Flutter, Git)',
                validator: (link) {
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
