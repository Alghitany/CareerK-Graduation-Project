import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';

class CertificationsForm extends StatelessWidget {
  final int index;

  const CertificationsForm({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DeveloperProfileCVGenerateSendDataCubit>();
    final controllers = cubit.certificationControllers[index];

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
                controller: controllers['name'],
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'AWS Certified Developer',
                validator: (value) => null,
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
                controller: controllers['issuer'],
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'Amazon Web Services',
                validator: (value) => null,
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Issue Date Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Issue Date:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                controller: controllers['date'],
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: '06/2024',
                validator: (value) => null,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
