import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/theming/styles.dart';

class PhoneNumberFormField extends StatefulWidget {
  final TextEditingController? controller;
  final Country? initialSelectedCountry;

  const PhoneNumberFormField(
      {super.key, this.controller, this.initialSelectedCountry});

  @override
  PhoneNumberFormFieldState createState() => PhoneNumberFormFieldState();
}

class PhoneNumberFormFieldState extends State<PhoneNumberFormField> {
  late Country initialSelectedCountry;

  @override
  void initState() {
    super.initState();
    initialSelectedCountry = widget.initialSelectedCountry ??
        Country(
          phoneCode: "20",
          countryCode: "EG",
          e164Sc: 2,
          geographic: true,
          level: 1,
          name: "Egypt",
          example: "1001234567",
          displayName: "Egypt +20",
          displayNameNoCountryCode: "Egypt",
          e164Key: "20-EG-0",
        );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormField<String>(
          validator: (phoneNumber) {
            if (phoneNumber.isNullOrEmpty() ||
                AppRegex.isValidPhoneNumber(phoneNumber!)) {
              return "Phone Number is required";
            }
            return null;
          },
          builder: (FormFieldState<String> field) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: field.hasError
                            ? ColorsManager.muleFawn
                            : ColorsManager.blueBell),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 48.h,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showCountryPicker(
                            context: context,
                            showPhoneCode: true,
                            onSelect: (Country country) {
                              setState(() {
                                initialSelectedCountry = country;
                              });
                            },
                          );
                        },
                        child: Row(
                          children: [
                            Text(initialSelectedCountry.flagEmoji,
                                style: TextStyle(fontSize: 20.sp)),
                            horizontalSpace(8),
                            SvgPicture.asset(
                              'assets/svgs/keyboard_arrow_down.svg',
                              height: 8.h,
                              width: 12.w,
                            ),
                          ],
                        ),
                      ),
                      horizontalSpace(6),
                      Text("(+${initialSelectedCountry.phoneCode}) ",
                          style: AppTextStyles.font14MercuryMulishBold),
                      Expanded(
                        child: Column(
                          children: [
                            AppTextFormField(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 12.h),
                              hintText: '01278522505',
                              hintStyle: AppTextStyles.font14MercuryMulishBold,
                              validator: (phoneNumber) {},
                              keyboardType: TextInputType.phone,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              onChanged: (value) {
                                field.didChange(value);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 100),
                  child: field.hasError
                      ? Padding(
                          padding: const EdgeInsets.only(top: 5, left: 14),
                          child: Text(
                            field.errorText!,
                            style: AppTextStyles.font12MuleFawnPoppinsRegular,
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
