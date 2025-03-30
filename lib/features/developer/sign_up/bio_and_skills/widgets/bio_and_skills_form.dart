import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/app_label.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class BioAndSkillsForm extends StatefulWidget {
  const BioAndSkillsForm({super.key});

  @override
  State<BioAndSkillsForm> createState() => _BioAndSkillsFormState();
}

class _BioAndSkillsFormState extends State<BioAndSkillsForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            const AppLabel(text: 'Brief Bio'),
            verticalSpace(8),
            SizedBox(
              width: double.infinity.w,
              height: 234.h,
              child: AppTextFormField(
                hintText: 'Enter a short bio....',
                keyboardType: TextInputType.multiline,
                minLines: 13,
                maxLines: 15,
                validator: (bio) {
                  if (bio!.isNullOrEmpty() ||
                      AppRegex.isValidDescription(bio)) {
                    return "Please enter a valid bio";
                  }
                },
                borderRadius: 0,
                contentPadding:
                EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
              ),
            ),
            verticalSpace(24),
            const AppLabel(text: 'Your Skills'),
            verticalSpace(8),
            SizedBox(
              width: double.infinity.w,
              height: 131.h,
              child: AppTextFormField(
                hintText: 'Enter your skills...',
                keyboardType: TextInputType.multiline,
                minLines: 13,
                maxLines: 15,
                validator: (bio) {
                  if (bio.isNullOrEmpty() ||
                      AppRegex.isValidDescription(bio!)) {
                    return "Please enter a valid bio";
                  }
                },
                borderRadius: 0,
                contentPadding:
                EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
              ),
            ),
          ],
        )
    );
  }
}
