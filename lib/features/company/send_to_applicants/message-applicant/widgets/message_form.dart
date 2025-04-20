import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_date_of_birth_form_field.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_regex.dart';


class MessageForm extends StatefulWidget {
  const MessageForm({super.key});

  @override
  State<MessageForm> createState() => _MessageFormState();
}

class _MessageFormState extends State<MessageForm> {
  final int maxChars = 200;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
        child: Column(
          children: [
            const AppLabel(text: 'Message'),
            Padding(
              padding: EdgeInsets.fromLTRB(0.w,8.0.h,0.w,32.h),
              child: AppTextFormField(
                  width: double.infinity,
                  height: 185.h,
                  hintText: 'Hi, Ali\nCongratulations!\nAfter reviewing the resume, We would like to invite you for interview on Saturday.\nBest Regards,\nHiring Manager.',
                  hintStyle: AppTextStyles.font14MercuryPoppinsMedium,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  keyboardType: TextInputType.multiline,
                  minLines: 3,
                  maxLines: 7,
                  maxLength: maxChars,
                  validator: (message) {
                    if (message!.isNullOrEmpty() ||
                        !AppRegex.isValidMessage(message)) {
                      return 'Please enter a valid name';
                    }
                  }
              ),
            ),
            const AppLabel(text: 'Date Interview'),
            verticalSpace(8),
            const AppDateOfBirthFormField()
          ],
        )
    );
  }
}
