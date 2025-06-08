import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/app_regex.dart';
import '../../../logic/developer_sign_up_cubit.dart';

class DeveloperEnterLocationForm extends StatelessWidget {
  const DeveloperEnterLocationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<DeveloperSignupCubit>().locationFormKey,
        child: Column(
          children: [
            const AppLabel(text: 'Enter Your Country'),
            verticalSpace(8),
            AppTextFormField(
                controller:
                    context.read<DeveloperSignupCubit>().countryController,
                hintText: 'Egypt',
                validator: (country) {
                  if (country.isNullOrEmpty() ||
                      !AppRegex.isValidName(country!)) {
                    return 'Please enter a valid country';
                  }
                }),
            verticalSpace(16),
            const AppLabel(text: 'Enter Your City'),
            verticalSpace(8),
            AppTextFormField(
                controller: context.read<DeveloperSignupCubit>().cityController,
                hintText: 'Cairo',
                validator: (city) {
                  if (city.isNullOrEmpty() || !AppRegex.isValidName(city!)) {
                    return 'Please enter a valid city';
                  }
                }),
            verticalSpace(16),
            const AppLabel(text: 'Enter Your Address'),
            verticalSpace(8),
            AppTextFormField(
                controller:
                    context.read<DeveloperSignupCubit>().addressController,
                hintText: 'Obour',
                validator: (address) {
                  // if (address.isNullOrEmpty() ||
                  //     !AppRegex.isValidName(address!)) {
                  //   return 'Please enter a valid address';
                  // }
                }),
          ],
        ));
  }
}
