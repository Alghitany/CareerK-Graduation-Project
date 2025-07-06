import 'package:carrerk/core/theming/colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/widgets/app_label.dart';
import '../../../../../../../core/widgets/app_text_form_field.dart';
import '../../../logic/developer_sign_up_cubit.dart';

class BioSkillsAndCVForm extends StatefulWidget {
  const BioSkillsAndCVForm({super.key});

  @override
  State<BioSkillsAndCVForm> createState() => _BioAndSkillsFormState();
}

class _BioAndSkillsFormState extends State<BioSkillsAndCVForm> {
  final TextEditingController _cvController = TextEditingController();
  String? fileName;

  Future<void> pickFile() async {
    final cubit = context.read<DeveloperSignupCubit>();

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      setState(() {
        fileName = result.files.single.name;
        _cvController.text = fileName!;
      });
      cubit.setCVFilePath(result.files.single.path!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<DeveloperSignupCubit>().bioSkillsFormKey,
      child: Column(
        children: [
          const AppLabel(text: 'Brief Bio'),
          verticalSpace(8),
          AppTextFormField(
            controller: context.read<DeveloperSignupCubit>().briefBioController,
            width: double.infinity.w,
            height: 234.h,
            hintText: 'Enter a short bio....',
            keyboardType: TextInputType.multiline,
            minLines: 13,
            maxLines: 15,
            validator: (bio) {
              if (bio == null ||
                  bio.isEmpty ||
                  !AppRegex.isValidDescription(bio)) {
                return "Please enter a valid bio";
              }
              return null;
            },
            borderRadius: 0,
            contentPadding:
                EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          ),
          verticalSpace(24),
          const AppLabel(text: 'Your Skills'),
          verticalSpace(8),
          AppTextFormField(
            controller: context.read<DeveloperSignupCubit>().skillsController,
            onChanged: (value) =>
                context.read<DeveloperSignupCubit>().setSkills(value),
            width: double.infinity.w,
            height: 131.h,
            hintText: 'Enter your skills...',
            keyboardType: TextInputType.multiline,
            minLines: 13,
            maxLines: 15,
            validator: (skills) {
              if (skills == null ||
                  skills.isEmpty ||
                  !AppRegex.isValidDescription(skills)) {
                return "Please enter valid skills";
              }
              return null;
            },
            borderRadius: 0,
            contentPadding:
                EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          ),
          verticalSpace(24),
          const AppLabel(text: 'Upload Your CV (Optional)'),
          verticalSpace(8),
          GestureDetector(
            onTap: pickFile,
            child: AbsorbPointer(
              child: AppTextFormField(
                controller: _cvController,
                hintText: 'CV',
                hintStyle: TextStyle(
                  color: fileName != null ? Colors.black : Colors.grey,
                ),
                validator: (cv) {
                  // CV is optional, so we can skip validation or keep it here if needed later
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
      ),
    );
  }
}
