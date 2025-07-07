import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CertificationsForm extends StatelessWidget {
  const CertificationsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Certificate Name Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Certificate:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'AWS Certified Developer',
                validator: (value) {
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Issuing Organization Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Issuer:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'Amazon Web Services',
                validator: (value) {
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Issue Date & Expiry Date Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Issue Date:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: '06/2024',
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
