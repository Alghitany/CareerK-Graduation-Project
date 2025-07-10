import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/widgets/app_date_of_birth_form_field.dart';
import 'package:carrerk/core/widgets/app_phone_number_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/theming/styles.dart';
import '../../../../../../../core/widgets/app_drop_down_menu.dart';
import '../../../../../../../core/widgets/app_text_form_field.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextFormField(
              hintText: "Enter first name",
              validator: (firstName) {
                if (firstName!.isNullOrEmpty() ||
                    !AppRegex.isValidName(firstName)) {
                  return 'Please enter a valid name';
                }
                return null;
              }),
          verticalSpace(24),
          AppTextFormField(
              hintText: "Enter last name",
              validator: (lastName) {
                if (lastName!.isNullOrEmpty() ||
                    !AppRegex.isValidName(lastName)) {
                  return 'Please enter a valid name';
                }
                return null;
              }),
          verticalSpace(24),
          AppDropDownMenu(
            hintText: 'Gender',
            items: <String>['Male', 'Female']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
          ),
          verticalSpace(24),
          const AppDateOfBirthFormField(),
          verticalSpace(24),
          const AppPhoneNumberFormField()
        ],
      ),
    );
  }
}
