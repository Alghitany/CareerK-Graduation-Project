import 'package:carrerk/core/helpers/app_regex.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';

class PersonalInfoForm extends StatelessWidget {
  const PersonalInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DeveloperProfileCVGenerateSendDataCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Name Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Name:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                controller: cubit.nameController,
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'Lionel',
                validator: (firstName) {
                  if (!AppRegex.isValidName(firstName)) {
                    return "Enter correct name";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Email Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Email:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                controller: cubit.emailController,
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'lionelmessi10@gmail.com',
                validator: (email) {
                  if (!AppRegex.isValidEmail(email)) {
                    return "Please enter a valid email";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Phone Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Phone:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                controller: cubit.phoneController,
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: '01278522707',
                validator: (phoneNumber) {
                  if (!AppRegex.isValidPhoneNumber(phoneNumber)) {
                    return "Enter valid phone number";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Address Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Address:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                controller: cubit.addressController,
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'Kafr Elshikh Markaz Motobas',
                validator: (address) {
                  if (!AppRegex.isValidLocation(address)) {
                    return "Enter valid address";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Portfolio Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Portfolio Url:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                controller: cubit.portfolioController,
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'https://github.com',
                validator: (link) {
                  return null;
                },
              ),
            ),
          ],
        ),
        verticalSpace(8),

        /// Linkedin Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppLabel(text: "Linkedin Url:"),
            const Spacer(),
            SizedBox(
              width: 220.w,
              child: AppTextFormField(
                controller: cubit.linkedinController,
                height: 40.h,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                hintText: 'https://linkedin.com',
                validator: (link) {
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
