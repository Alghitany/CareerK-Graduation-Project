import 'package:carrerk/core/helpers/app_regex.dart' show AppRegex;
import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/widgets/app_label.dart';
import '../../../../../../../core/widgets/app_text_form_field.dart';
import '../../../logic/company_sign_up_cubit.dart';

class CompanyFillProfileForm extends StatefulWidget {
  const CompanyFillProfileForm({super.key});

  @override
  State<CompanyFillProfileForm> createState() => _CompanyFillProfileFormState();
}

class _CompanyFillProfileFormState extends State<CompanyFillProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CompanySignupCubit>().fillProfileFormKey,
      child: Column(
        children: [
          const AppLabel(text: 'Brief Description'),
          verticalSpace(8),
          AppTextFormField(
            controller:
                context.read<CompanySignupCubit>().briefDescriptionController,
            width: double.infinity.w,
            height: 234.h,
            hintText: 'Enter the details....',
            keyboardType: TextInputType.multiline,
            minLines: 13,
            maxLines: 15,
            validator: (bio) {
              if (bio!.isNullOrEmpty() || !AppRegex.isValidDescription(bio)) {
                return "Please enter a valid description";
              }
              return null;
            },
            borderRadius: 0,
            contentPadding:
                EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          ),
        ],
      ),
    );
  }
}
