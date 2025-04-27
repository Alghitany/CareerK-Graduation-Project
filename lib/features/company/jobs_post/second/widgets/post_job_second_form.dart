import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_drop_down_menu.dart';
import '../../../../../core/widgets/app_label.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class PostJobSecondForm extends StatefulWidget {
  const PostJobSecondForm({super.key});

  @override
  State<PostJobSecondForm> createState() => _PostJobSecondFormState();
}

class _PostJobSecondFormState extends State<PostJobSecondForm> {
  final formKey = GlobalKey<FormState>();
  List<TextEditingController> skillsContollers = [TextEditingController()];

  void addSkillField() {
    setState(() {
      skillsContollers.add(TextEditingController());
    });
  }

  void removeSkillField(int index) {
    setState(() {
      skillsContollers.removeAt(index);
    });
  }

  @override
  void dispose() {
    super.dispose();
    for (var controller in skillsContollers) {
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const AppLabel(text: 'Skills Required'),
          verticalSpace(8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: skillsContollers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.0.h),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextFormField(
                        controller: skillsContollers[index],
                        hintText: "Add Skills",
                        validator: (skills) {
                          if (skills.isNullOrEmpty() ||
                              !AppRegex.isValidName(skills!)) {
                            return "Enter a valid skills";
                          }
                        },
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            skillsContollers.length > 1
                                ? Padding(
                                    padding: EdgeInsets.only(right: 10.0.w),
                                    child: InkWell(
                                      onTap: () => removeSkillField(index),
                                      child: const Icon(
                                        Icons.remove,
                                        color: ColorsManager.pastelGrey,
                                      ),
                                    ),
                                  )
                                : const SizedBox
                                    .shrink(), // Empty widget if no remove button
                            Padding(
                              padding: EdgeInsets.only(right: 10.0.w),
                              child: InkWell(
                                onTap: addSkillField,
                                child: SizedBox(
                                  height: 15.h,
                                  width: 15.w,
                                  child:
                                      SvgPicture.asset('assets/svgs/add.svg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Enter Experience Level'),
          verticalSpace(8),
          AppDropDownMenu(
            hintText: 'Midlevel',
            items: <String>['Junior', 'Midlevel', 'Senior']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
          ),
          verticalSpace(16),
          const AppLabel(text: 'Company Department'),
          verticalSpace(8),
          AppDropDownMenu(
            hintText: 'IT',
            items: <String>['IT', 'Software Engineering', 'Medical']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
          ),
          verticalSpace(16),
          const AppLabel(text: 'Job Availability'),
          verticalSpace(8),
          AppDropDownMenu(
            hintText: 'Remotely',
            items: <String>['Remotely', 'Hybrid', 'In-Site']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
          ),
          verticalSpace(16),
          const AppLabel(text: 'Deadline Task'),
          verticalSpace(8),
          AppTextFormField(
              hintText: '10 Days',
              validator: (time) {
                if (time.isNullOrEmpty() || !AppRegex.isValidName(time!)) {
                  return "Please enter a valid time";
                }
              }),
        ],
      ),
    );
  }
}
