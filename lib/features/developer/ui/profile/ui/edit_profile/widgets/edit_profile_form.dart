import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_date_of_birth_form_field.dart';
import 'package:carrerk/core/widgets/app_phone_number_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/widgets/app_drop_down_menu.dart';
import '../../../../../../../core/widgets/app_text_form_field.dart';
import '../../../logic/developer_profile_edit_cubit.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final editCubit = context.read<DeveloperProfileEditCubit>();

    return Form(
      key: editCubit.editFormKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Enter first name",
            controller: editCubit.firstNameController,
            validator: (value) {
              return null;
            },
          ),
          verticalSpace(24),
          AppTextFormField(
            hintText: "Enter last name",
            controller: editCubit.lastNameController,
            validator: (value) {
              return null;
            },
          ),
          verticalSpace(24),
          AppDropDownMenu(
            controller:
                context.read<DeveloperProfileEditCubit>().genderController,
            hintText: 'Gender',
            items: <String>['Male', 'Female']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: AppTextStyles.font14BlackPoppinsRegular,
                ),
              );
            }).toList(),
            onChanged: (selected) {
              editCubit.genderController.text = selected!;
            },
          ),
          verticalSpace(24),
          AppDateOfBirthFormField(
            dobController: editCubit.dateOfBirthController,
          ),
          verticalSpace(24),
          AppPhoneNumberFormField(
            controller: editCubit.phoneNumberController,
          ),
        ],
      ),
    );
  }
}
