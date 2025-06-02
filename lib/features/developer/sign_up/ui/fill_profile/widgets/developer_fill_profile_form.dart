import 'package:carrerk/core/widgets/app_drop_down_menu.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_date_of_birth_form_field.dart';
import '../../../../../../core/widgets/app_phone_number_form_field.dart';

class DeveloperFillProfileForm extends StatefulWidget {
  const DeveloperFillProfileForm({super.key});

  @override
  State<DeveloperFillProfileForm> createState() =>
      _DeveloperFillProfileFormState();
}

class _DeveloperFillProfileFormState extends State<DeveloperFillProfileForm> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    dobController.dispose();
    genderController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          //TODO: Controllers should be reviewed to prevent memory leak
          const AppLabel(text: 'Gender'),
          verticalSpace(8),
          AppDropDownMenu(
            hintText: 'Female',
            items: <String>['Male', 'Female']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
          ),
          verticalSpace(16),
          const AppLabel(text: 'Date Of Birth'),
          verticalSpace(8),
          // Note: Date of birth will appear when controller work
          AppDateOfBirthFormField(
            dobController: dobController,
          ),
          verticalSpace(16),
          const AppLabel(text: 'Phone Number'),
          verticalSpace(8),
          const AppPhoneNumberFormField(),
        ],
      ),
    );
  }
}
