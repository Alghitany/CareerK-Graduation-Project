import 'package:carrerk/core/helpers/app_regex.dart';
import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_label.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            const AppLabel(text: 'Email'),
            verticalSpace(12),
            AppTextFormField(
                hintText: 'email@email.com',
                validator: (email){
                  if(email.isNullOrEmpty() || !AppRegex.isValidEmail(email!)){
                    return 'Please enter a valid email';
                  }
                }
            ),
            verticalSpace(16),
            const AppLabel(text: 'Password'),
            verticalSpace(12),
            AppTextFormField(
                hintText: '*********',
                validator: (password){
                  if(password.isNullOrEmpty() || !AppRegex.isValidPassword(password!)){
                    return 'Please enter a valid password';
                  }
                }
            )
          ],
        )
    );
  }
}
