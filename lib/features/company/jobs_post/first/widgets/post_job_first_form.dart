import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_drop_down_menu.dart';
import '../../../../../core/widgets/app_label.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class PostJobFirstForm extends StatefulWidget {
  const PostJobFirstForm({super.key});

  @override
  State<PostJobFirstForm> createState() => _PostJobFirstFormState();
}

class _PostJobFirstFormState extends State<PostJobFirstForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const AppLabel(
            text: 'Job Title',
          ),
          verticalSpace(8),
          AppTextFormField(
              hintText: "Front end Developer",
              validator: (jobTitle) {
                if (jobTitle!.isNullOrEmpty() ||
                    !AppRegex.isValidName(jobTitle)) {
                  return 'Please enter a valid title';
                }
              }),
          verticalSpace(16),
          const AppLabel(
            text: 'Job Description',
          ),
          verticalSpace(8),
          AppTextFormField(
              hintText: "Enter job details",
              height: 92.h,
              maxLines: 3,
              validator: (jobDescription) {
                if (jobDescription!.isNullOrEmpty() ||
                    !AppRegex.isValidMessage(jobDescription)) {
                  return 'Please enter a valid title';
                }
              }),
          verticalSpace(16),
          const AppLabel(
            text: 'Job Type',
          ),
          verticalSpace(8),
          AppDropDownMenu(
            hintText: 'Full Time',
            items: <String>['Part Time', 'Full Time']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
          ),
          verticalSpace(16),
          const AppLabel(text: 'Job Location'),
          verticalSpace(8),
          AppTextFormField(
              hintText: 'Street 12....',
              validator: (location) {
                if (location.isNullOrEmpty() ||
                    !AppRegex.isValidName(location!)) {
                  return 'Please enter a valid location';
                }
              }),
          verticalSpace(16),
          const AppLabel(text: 'Price Range'),
          verticalSpace(8),
          AppTextFormField(
              hintText: '1000\$',
              validator: (price) {
                if (price.isNullOrEmpty() || !AppRegex.isValidNumber(price!)) {
                  return "Please enter a valid salary";
                }
              }),
        ],
      ),
    );
  }
}
