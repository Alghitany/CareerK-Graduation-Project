import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionalForm extends StatelessWidget {
  const AdditionalForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Title:"),
            const Spacer(),
            SizedBox(
              width: 250.w,
              child: AppTextFormField(
                height: 40.h,
                hintText: 'Hobbies, Languages, etc.',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                validator: (value) {
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Description Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Details:"),
            const Spacer(),
            SizedBox(
              width: 250.w,
              child: AppTextFormField(
                hintText: 'Example: English, Arabic',
                maxLines: 3,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
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
