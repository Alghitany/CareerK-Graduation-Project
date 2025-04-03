import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/app_regex.dart';

class DeveloperEnterLocationForm extends StatelessWidget {
  const DeveloperEnterLocationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
        key: formKey,
        child: Column(
          children: [
            const AppLabel(text: 'Enter Your Country'),
            verticalSpace(8),
            AppTextFormField(
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
                hintText: 'Obour',
                validator: (address) {
                  if (address.isNullOrEmpty() ||
                      !AppRegex.isValidName(address!)) {
                    return 'Please enter a valid address';
                  }
                }),
          ],
        ));
  }
}
