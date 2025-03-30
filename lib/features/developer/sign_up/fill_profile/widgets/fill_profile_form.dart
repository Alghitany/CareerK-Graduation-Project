import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import 'date_of_birth_form_field.dart';
import 'gender_drop_down_menu.dart';

class FillProfileForm extends StatelessWidget {
  const FillProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          //TODO: Controllers should be reviewed to prevent memory leak
          const GenderDropDownMenu(),
          verticalSpace(28),
          const DateOfBirthFormField(),
        ],
      ),
    );
  }
}
