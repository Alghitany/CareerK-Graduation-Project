import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helpers/app_regex.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/widgets/app_label.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';

class BioSkillsAndCVForm extends StatefulWidget {
  const BioSkillsAndCVForm({super.key});

  @override
  State<BioSkillsAndCVForm> createState() => _BioAndSkillsFormState();
}

class _BioAndSkillsFormState extends State<BioSkillsAndCVForm> {
  String? fileName;
  final formKey = GlobalKey<FormState>();

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
            const AppLabel(text: 'Brief Bio'),
            verticalSpace(8),
            AppTextFormField(
              width: double.infinity.w,
              height: 234.h,
              hintText: 'Enter a short bio....',
              keyboardType: TextInputType.multiline,
              minLines: 13,
              maxLines: 15,
              validator: (bio) {
                if (bio!.isNullOrEmpty() || !AppRegex.isValidDescription(bio)) {
                  return "Please enter a valid bio";
                }
              },
              borderRadius: 0,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
            ),
            verticalSpace(24),
            const AppLabel(text: 'Your Skills'),
            verticalSpace(8),
            AppTextFormField(
              width: double.infinity.w,
              height: 131.h,
              hintText: 'Enter your skills...',
              keyboardType: TextInputType.multiline,
              minLines: 13,
              maxLines: 15,
              validator: (bio) {
                if (bio.isNullOrEmpty() || !AppRegex.isValidDescription(bio!)) {
                  return "Please enter a valid bio";
                }
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
        ));
  }
}
