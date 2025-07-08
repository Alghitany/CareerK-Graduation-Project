import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';

class SkillsetsForm extends StatelessWidget {
  const SkillsetsForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DeveloperProfileCVGenerateSendDataCubit>();

    return Column(
      children: [
        /// Skills Row (All Skillsets in One Field - Comma-separated)
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 320.w,
              child: AppTextFormField(
                controller: cubit.skillsetsController,
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'Dart, Kotlin, Flutter, Git...',
                validator: (skills) {
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
