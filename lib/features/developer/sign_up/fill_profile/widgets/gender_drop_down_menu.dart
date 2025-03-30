import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theming/colors.dart';

class GenderDropDownMenu extends StatefulWidget {
  /*TODO: Make the controller non-nullable and should be required
     dispose will happen in the parent widget*/
  final TextEditingController? genderController;

  const GenderDropDownMenu({
    super.key,
    this.genderController,
  });

  @override
  State<GenderDropDownMenu> createState() => _GenderDropDownMenuState();
}

class _GenderDropDownMenuState extends State<GenderDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        hint: Text('Female', style: AppTextStyles.font14MercuryPoppinsMedium),
        value: null,
        onChanged: (String? newValue) {
          widget.genderController?.text = newValue!;
        },
        validator: (value) {
          if (value.isNullOrEmpty()) {
            return "Gender is required";
          }
          return null;
        },
        items: <String>['Male', 'Female']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
          );
        }).toList(),
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: ColorsManager.blueBell,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: ColorsManager.blueBell,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: ColorsManager.blueBell,
            ),
          ),
        ),
        icon: SvgPicture.asset('assets/svgs/keyboard_arrow_down.svg'));
  }
}
