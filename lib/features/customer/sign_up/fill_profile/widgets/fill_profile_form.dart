import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/app_label.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class FillProfileForm extends StatefulWidget {
  const FillProfileForm({super.key});

  @override
  State<FillProfileForm> createState() => _FillProfileFormState();
}

class _FillProfileFormState extends State<FillProfileForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const AppLabel(text: 'Brief Description'),
          verticalSpace(8),
          AppTextFormField(
            width: double.infinity.w,
            height: 175.h,
            hintText: 'Enter the details....',
            keyboardType: TextInputType.multiline,
            minLines: 13,
            maxLines: 15,
            validator: (bio) {
              if (bio!.isNullOrEmpty() || !AppRegex.isValidDescription(bio)) {
                return "Please enter a valid description";
              }
            },
            borderRadius: 0,
            contentPadding:
            EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          ),
          verticalSpace(16),
          const AppLabel(text: 'Contact Email'),
          verticalSpace(8),
          AppTextFormField(
              hintText: 'example@email.com',
              validator: (email) {
                if (email!.isNullOrEmpty() || !AppRegex.isValidEmail(email)) {
                  return 'Please enter a valid email';
                }
              }),
          verticalSpace(16),
          const AppLabel(text: 'Enter Phone number'),
          verticalSpace(8),
          AppTextFormField(
              hintText: '+201278522505',
              validator: (phoneNumber) {
                if (phoneNumber.isNullOrEmpty() ||
                    !AppRegex.isValidPhoneNumber(phoneNumber!)) {
                  return "Please enter a valid number";
                }
              }),
        ],
      ),
    );
  }
}
