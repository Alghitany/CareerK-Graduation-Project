import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';

class ProjectsForm extends StatelessWidget {
  final int index;

  const ProjectsForm({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DeveloperProfileCVGenerateSendDataCubit>();
    final controllers = cubit.projectControllers[index];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Project Title Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Title:"),
            const Spacer(),
            SizedBox(
              width: 230.w,
              child: AppTextFormField(
                controller: controllers['title'],
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'AI Chatbot App',
                validator: (value) => null,
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Technologies Used Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppLabel(
              text: "Technologies:",
              overflow: TextOverflow.ellipsis,
              width: 92.w,
            ),
            const Spacer(),
            SizedBox(
              width: 230.w,
              child: AppTextFormField(
                controller: controllers['technologies'],
                height: 60.h,
                hintText: 'Flutter, Firebase',
                keyboardType: TextInputType.multiline,
                minLines: 2,
                maxLines: 3,
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
            AppLabel(
              text: "Description:",
              overflow: TextOverflow.ellipsis,
              width: 92.w,
            ),
            const Spacer(),
            SizedBox(
              width: 230.w,
              child: AppTextFormField(
                controller: controllers['description'],
                height: 60.h,
                keyboardType: TextInputType.multiline,
                minLines: 2,
                maxLines: 3,
                hintText: 'Developed a chatbot app for customer support.',
                validator: (value) => null,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
