import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationForm extends StatelessWidget {
  const EducationForm({super.key});

  @override
  Widget build(BuildContext context) {
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
