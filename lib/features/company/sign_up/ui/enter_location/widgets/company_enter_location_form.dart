import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_drop_down_menu.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/theming/styles.dart';
import '../../../logic/company_sign_up_cubit.dart';

class CompanyEnterLocationForm extends StatefulWidget {
  const CompanyEnterLocationForm({super.key});

  @override
  State<CompanyEnterLocationForm> createState() =>
      _CompanyEnterLocationFormState();
}

class _CompanyEnterLocationFormState extends State<CompanyEnterLocationForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CompanySignUpCubit>().enterLocationFormKey,
      child: Column(
        children: [
          const AppLabel(text: 'Enter Your Country'),
          verticalSpace(8),
          AppTextFormField(
              controller: context.read<CompanySignUpCubit>().countryController,
              hintText: 'Egypt',
              validator: (country) {
                return null;

                // if (country.isNullOrEmpty() ||
                //     !AppRegex.isValidName(country!)) {
                //   return 'Please enter a valid country';
                // }
              }),
          verticalSpace(16),
          const AppLabel(text: 'Enter Your City'),
          verticalSpace(8),
          AppTextFormField(
              controller: context.read<CompanySignUpCubit>().cityController,
              hintText: 'Cairo',
              validator: (city) {
                return null;

                // if (city.isNullOrEmpty() || !AppRegex.isValidName(city!)) {
                //   return 'Please enter a valid city';
                // }
              }),
          verticalSpace(16),
          const AppLabel(text: 'Enter Your Address'),
          verticalSpace(8),
          AppTextFormField(
              controller: context.read<CompanySignUpCubit>().addressController,
              hintText: 'Obour',
              validator: (address) {
                return null;

                // if (address.isNullOrEmpty() ||
                //     !AppRegex.isValidName(address!)) {
                //   return 'Please enter a valid address';
                // }
              }),
          verticalSpace(16),
          const AppLabel(text: 'Company Website'),
          verticalSpace(8),
          AppTextFormField(
              controller: context.read<CompanySignUpCubit>().websiteController,
              hintText: 'https://',
              keyboardType: TextInputType.url,
              validator: (url) {
                return null;

                // if (!AppRegex.isValidUrl(url!)) {
                //   return "Enter valid URL";
                // }
              }),
          verticalSpace(16),
          const AppLabel(text: 'Industry'),
          verticalSpace(8),
          AppDropDownMenu(
            controller: context.read<CompanySignUpCubit>().industryController,
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
