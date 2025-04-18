import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/app_regex.dart';

class AddCardForm extends StatelessWidget {
  const AddCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          const AppLabel(text: 'Card Name'),
          verticalSpace(8),
          AppTextFormField(
              hintText: "Enter card name",
              validator: (cardName) {
                if (cardName!.isNullOrEmpty() ||
                    !AppRegex.isValidName(cardName)) {
                  return 'Please enter a valid name';
                }
              }),
          verticalSpace(16),
          const AppLabel(text: 'Card Number'),
          verticalSpace(8),
          AppTextFormField(
              hintText: '****  **65  8765  3456',
              validator: (cardNumber) {
                if (cardNumber.isNullOrEmpty() ||
                    !AppRegex.isValidNumber(cardNumber!)) {
                  return "Please enter a valid salary";
                }
              }),
        ],
      ),
    );
  }
}
