import 'package:carrerk/core/helpers/app_regex.dart';
import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theming/colors.dart';

class CompanyContactInformationForm extends StatefulWidget {
  const CompanyContactInformationForm({super.key});

  @override
  State<CompanyContactInformationForm> createState() =>
      _CompanyContactInformationFormState();
}

class _CompanyContactInformationFormState
    extends State<CompanyContactInformationForm> {
  final formKey = GlobalKey<FormState>();

  List<TextEditingController> socialMediaControllers = [
    TextEditingController()
  ];

  void addSocialMediaField() {
    setState(() {
      socialMediaControllers.add(TextEditingController());
    });
  }

  void removeSocialMediaField(int index) {
    setState(() {
      socialMediaControllers.removeAt(index);
    });
  }

  @override
  void dispose() {
    super.dispose();
    for (var controller in socialMediaControllers) {
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const AppLabel(text: 'Contact Name'),
          verticalSpace(8),
          AppTextFormField(
            hintText: 'CEO',
            validator: (contactName) {
              if (contactName.isNullOrEmpty() ||
                  !AppRegex.isValidName(contactName!)) {
                return "Please enter a valid name";
              }
              return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Contact Email'),
          verticalSpace(8),
          AppTextFormField(
              hintText: 'example@email.com',
              validator: (email) {
                if (!AppRegex.isValidEmail(email!)) {
                  return 'Please enter a valid email';
                }
                return null;
              }),
          verticalSpace(16),
          const AppLabel(text: 'Enter Phone number'),
          verticalSpace(8),
          AppTextFormField(
              hintText: '+201278522505',
              validator: (phoneNumber) {
                if (phoneNumber.isNullOrEmpty() ||
                    !AppRegex.isValidPhoneNumber(phoneNumber!)) {
                  return "Please enter a valid number";
                }
                return null;
              }),
          verticalSpace(16),
          const AppLabel(text: 'Social media links'),
          verticalSpace(8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: socialMediaControllers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.0.h),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextFormField(
                        controller: socialMediaControllers[index],
                        hintText: "https://",
                        validator: (url) {
                          if (url == null || url.isEmpty) {
                            return "Enter a valid URL";
                          } else if (!AppRegex.isValidUrl(url)) {
                            return "Invalid URL format";
                          }
                          return null;
                        },
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            socialMediaControllers.length > 1
                                ? Padding(
                                    padding: EdgeInsets.only(right: 10.0.w),
                                    child: InkWell(
                                      onTap: () =>
                                          removeSocialMediaField(index),
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
                                onTap: addSocialMediaField,
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
        ],
      ),
    );
  }
}
