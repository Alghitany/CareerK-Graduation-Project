import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_drop_down_menu.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/app_regex.dart';
import '../../../../../../core/theming/styles.dart';

class CompanyEnterLocationForm extends StatefulWidget {
  const CompanyEnterLocationForm({super.key});

  @override
  State<CompanyEnterLocationForm> createState() =>
      _CompanyEnterLocationFormState();
}

class _CompanyEnterLocationFormState extends State<CompanyEnterLocationForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
          verticalSpace(16),
          const AppLabel(text: 'Company Website'),
          verticalSpace(8),
          AppTextFormField(
              hintText: 'https://',
              keyboardType: TextInputType.url,
              validator: (url) {
                if (!AppRegex.isValidUrl(url!)) {
                  return "Enter valid URL";
                }
              }),
          verticalSpace(16),
          const AppLabel(text: 'Industry'),
          verticalSpace(8),
          AppDropDownMenu(
            hintText: 'Mobile Apps',
            items: <String>['AI', 'Web Development']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
