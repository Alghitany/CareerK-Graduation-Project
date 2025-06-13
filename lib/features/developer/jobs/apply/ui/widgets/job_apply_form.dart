import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_phone_number_form_field.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:carrerk/features/developer/jobs/apply/logic/developer_jobs_apply_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/app_regex.dart';
import '../../../../../../core/theming/colors.dart';

class JobApplyForm extends StatefulWidget {
  const JobApplyForm({super.key});

  @override
  State<JobApplyForm> createState() => _JobApplyFormState();
}

class _JobApplyFormState extends State<JobApplyForm> {
  String? fileName;

  Future<void> pickFile() async {
    final cubit = context.read<DeveloperJobsApplyCubit>();

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      setState(() {
        fileName = result.files.single.name;
      });
      cubit.setCVFilePath(result.files.single.path!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<DeveloperJobsApplyCubit>().jobApplicationFormKey,
        child: Column(
          children: [
            const AppLabel(text: 'Name'),
            verticalSpace(8),
            AppTextFormField(
                controller: context.read<DeveloperJobsApplyCubit>().nameController,
                hintText: "Ali Mohamed",
                validator: (name) {
                  if (!AppRegex.isValidName(name!)) {
                    return 'Please enter a valid name';
                  }
                  return null;
                }),
            verticalSpace(16),
            // const AppLabel(text: 'Email Address'),
            // verticalSpace(8),
            // AppTextFormField(
            //     controller: context.read<DeveloperJobsApplyCubit>().,
            //     hintText: 'example@email.com',
            //     validator: (email) {
            //       if (!AppRegex.isValidEmail(email!)) {
            //         return 'Please enter a valid email';
            //       }
            //       return null;
            //     }),
            // verticalSpace(16),
            const AppLabel(text: 'Phone Number'),
            verticalSpace(8),
            AppPhoneNumberFormField(
              controller: context.read<DeveloperJobsApplyCubit>().phoneController,
            ),
            verticalSpace(16),
            const AppLabel(text: 'Years of experience'),
            verticalSpace(8),
            AppTextFormField(
              controller: context.read<DeveloperJobsApplyCubit>().yearsOfExperienceController,
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
            const AppLabel(text: 'Expected salary'),
            verticalSpace(8),
            AppTextFormField(
                controller: context.read<DeveloperJobsApplyCubit>().expectedSalaryController,
                hintText: '12000 EGP',
                validator: (salary) {
                  if (salary.isNullOrEmpty() ||
                      !AppRegex.isValidNumber(salary!)) {
                    return "Please enter a valid salary";
                  }
                  return null;
                }),
            verticalSpace(16),
            const AppLabel(text: 'Upload your CV'),
            verticalSpace(8),
            GestureDetector(
              onTap: pickFile,
              child: AbsorbPointer(
                child: AppTextFormField(
                  hintText: fileName ?? 'CV',
                  validator: (_) {
                    if (context.read<DeveloperJobsApplyCubit>().uploadedCV == null) {
                      return 'Please upload your CV';
                    }
                    return null;
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
        ));
  }
}
