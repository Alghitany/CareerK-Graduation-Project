import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';

class AdditionalForm extends StatelessWidget {
  final int index;

  const AdditionalForm({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DeveloperProfileCVGenerateSendDataCubit>();
    final controllers = cubit.additionalControllers[index];

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
                controller: controllers['title'],
                height: 40.h,
                hintText: 'Hobbies, Languages, etc.',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                validator: (value) => null,
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
                controller: controllers['description'],
                hintText: 'Example: English, Arabic',
                maxLines: 3,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                validator: (value) => null,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
