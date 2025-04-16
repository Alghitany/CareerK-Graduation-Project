import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_phone_number_form_field.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/theming/colors.dart';

class JobApplyForm extends StatefulWidget {
  const JobApplyForm({super.key});

  @override
  State<JobApplyForm> createState() => _JobApplyFormState();
}

class _JobApplyFormState extends State<JobApplyForm> {
  final formKey = GlobalKey<FormState>();
  String? fileName;
  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      setState(() {
        fileName = result.files.single.name;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
        child: Column(
          children: [
            const AppLabel(text: 'Name'),
            verticalSpace(8),
            AppTextFormField(
                hintText: "Ali Mohamed",
                validator: (firstName) {
                  if (firstName!.isNullOrEmpty() ||
                      !AppRegex.isValidName(firstName)) {
                    return 'Please enter a valid name';
                  }
                }),
            verticalSpace(16),
            const AppLabel(text: 'Email Address'),
            verticalSpace(8),
            AppTextFormField(
                hintText: 'example@email.com',
                validator: (email) {
                  if (email!.isNullOrEmpty() || !AppRegex.isValidEmail(email)) {
                    return 'Please enter a valid email';
                  }
                }),
            verticalSpace(16),
            const AppLabel(text: 'Phone Number'),
            verticalSpace(8),
            const AppPhoneNumberFormField(),
            verticalSpace(16),
            const AppLabel(text: 'Years of experience'),
            verticalSpace(8),
            AppTextFormField(
              hintText: '2',
              validator: (experience) {
                if (experience.isNullOrEmpty() ||
                    !AppRegex.isValidNumber(experience!)) {
                  return "Please enter a valid number";
                }
              },
              keyboardType: TextInputType.number,
            ),
            verticalSpace(16),
            const AppLabel(text: 'Expected salary'),
            verticalSpace(8),
            AppTextFormField(
                hintText: '12000 EGP',
                validator: (salary) {
                  if (salary.isNullOrEmpty() || !AppRegex.isValidNumber(salary!)) {
                    return "Please enter a valid salary";
                  }
                }),
            verticalSpace(16),
            const AppLabel(text: 'Upload your CV'),
            verticalSpace(8),
            GestureDetector(
              onTap: pickFile,
              child: AbsorbPointer(
                child: AppTextFormField(
                  hintText: fileName ?? 'CV',
                  validator: (cv) {
                    if (cv.isNullOrEmpty() || !AppRegex.isValidName(cv!)) {
                      return "Please enter a valid cv";
                    }
                  },
                  suffixIcon: const Icon(
                    Icons.drive_folder_upload,
                    color: ColorsManager.granite,
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
