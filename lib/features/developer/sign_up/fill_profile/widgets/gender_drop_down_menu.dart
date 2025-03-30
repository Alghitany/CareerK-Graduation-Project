import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theming/colors.dart';

class GenderDropDownMenu extends StatefulWidget {
  final String? hintText;
  final TextStyle? hintStyle;
  /*TODO: Make the controller non-nullable and should be required
     dispose will happen in the parent widget*/
  final TextEditingController? gender;
  final TextStyle? textStyle;
  final double? dropDownMenuItemHorizontalPadding;
  final double? dropDownMenuItemVerticalPadding;
  final bool? isDense;
  final double? dropDownMenuItemBorderRadius;
  final Color? dropDownMenuItemBorderColor;
  const GenderDropDownMenu({super.key,
    this.hintText,
    this.hintStyle,
    this.gender,
    this.textStyle,
    this.dropDownMenuItemHorizontalPadding,
    this.dropDownMenuItemVerticalPadding,
    this.isDense,
    this.dropDownMenuItemBorderRadius,
    this.dropDownMenuItemBorderColor});

  @override
  State<GenderDropDownMenu> createState() => _GenderDropDownMenuState();
}

class _GenderDropDownMenuState extends State<GenderDropDownMenu> {
  @override
  void dispose() {
    super.dispose();
    widget.gender?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      hint: Text(
        widget.hintText ?? 'Gender',
        style: widget.hintStyle ?? AppTextStyles.font14MercuryPoppinsMedium
      ),
      value: null,
      onChanged: (String? newValue) {
        widget.gender?.text = newValue!;
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
          child: Text(
            value,
            style: widget.textStyle ?? AppTextStyles.font14BlackPoppinsRegular
          ),
        );
      }).toList(),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            horizontal: widget.dropDownMenuItemHorizontalPadding ?? 16,
            vertical: widget.dropDownMenuItemVerticalPadding ?? 10), // Adjust padding
        isDense: widget.isDense ?? true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.dropDownMenuItemBorderRadius ?? 8),
          borderSide: BorderSide(
            color: widget.dropDownMenuItemBorderColor ?? ColorsManager.casper,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.dropDownMenuItemBorderRadius ?? 8),
          borderSide: BorderSide(
            color: widget.dropDownMenuItemBorderColor ?? ColorsManager.casper,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.dropDownMenuItemBorderRadius ?? 8),
          borderSide: BorderSide(
            color: widget.dropDownMenuItemBorderColor ?? ColorsManager.casper,
          ),
        ),
      ),
      icon: SvgPicture.asset('assets/svgs/keyboard_arrow_down.svg')
    );
  }
}
