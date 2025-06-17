import 'package:carrerk/core/helpers/app_regex.dart';
import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/theming/styles.dart';
import '../../../../../../../core/widgets/app_drop_down_menu.dart';
import '../../../logic/developer_sign_up_cubit.dart';

class OptionalDataForm extends StatefulWidget {
  const OptionalDataForm({super.key});

  @override
  State<OptionalDataForm> createState() => _OptionalDataFormState();
}

class _OptionalDataFormState extends State<OptionalDataForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<DeveloperSignupCubit>().optionalDataFormKey,
        child: Column(
          children: [
            const AppLabel(text: 'Enter Your Current Track'),
            verticalSpace(8),
            AppTextFormField(
                controller:
                    context.read<DeveloperSignupCubit>().currentTrackController,
                hintText: 'DevOps Developer',
                validator: (track) {
                  if (track.isNullOrEmpty() || !AppRegex.isValidName(track!)) {
                    return "Please enter a valid track";
                  }
                  return null;
                }),
            verticalSpace(16),
            const AppLabel(text: 'Enter Track Level'),
            verticalSpace(8),
            AppTextFormField(
                controller:
                    context.read<DeveloperSignupCubit>().trackLevelController,
                hintText: 'Senior',
                validator: (level) {
                  if (level.isNullOrEmpty() || !AppRegex.isValidName(level!)) {
                    return "Please enter a valid level";
                  }
                  return null;
                }),
            verticalSpace(16),
            const AppLabel(text: 'Enter Your Previous Job'),
            verticalSpace(8),
            AppTextFormField(
                controller:
                    context.read<DeveloperSignupCubit>().previousJobController,
                hintText: 'PHP Developer',
                validator: (previousJob) {
                  if (previousJob.isNullOrEmpty() ||
                      !AppRegex.isValidName(previousJob!)) {
                    return "Please enter a valid name";
                  }
                  return null;
                }),
            verticalSpace(16),
            const AppLabel(text: 'Enter Type Of Job'),
            verticalSpace(8),
            AppDropDownMenu(
              controller:
                  context.read<DeveloperSignupCubit>().typeOfJobController,
              hintText: 'Remote',
              items: <String>['On-Site', 'Hybrid', 'Remote']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: AppTextStyles.font14BlackPoppinsRegular),
                );
              }).toList(),
            ),
            verticalSpace(16),
            const AppLabel(text: 'Enter Years Of Experience'),
            verticalSpace(8),
            AppTextFormField(
              controller: context
                  .read<DeveloperSignupCubit>()
                  .yearsOfExperienceController,
              hintText: '2',
              validator: (experience) {
                if (experience.isNullOrEmpty() ||
                    !AppRegex.isValidNumber(experience!)) {
                  return "Please enter a valid number";
                }
                return null;
              },
              keyboardType: TextInputType.number,
            ),
            verticalSpace(16),
            const AppLabel(text: 'Enter Expected Salary'),
            verticalSpace(8),
            AppTextFormField(
                controller: context
                    .read<DeveloperSignupCubit>()
                    .expectedSalaryController,
                hintText: '12000 EGP',
                validator: (salary) {
                  if (salary.isNullOrEmpty() ||
                      !AppRegex.isValidNumber(salary!)) {
                    return "Please enter a valid salary";
                  }
                  return null;
                }),
          ],
        ));
  }
}
