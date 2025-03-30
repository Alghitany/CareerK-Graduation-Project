import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DateOfBirthFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final double? suffixIconHeight;
  final double? suffixIconWidth;
  final Color? suffixIconColor;
  final TextEditingController? dobController;
  const DateOfBirthFormField({
    super.key,
    this.padding,
    this.suffixIconHeight,
    this.suffixIconWidth,
    this.suffixIconColor,
    this.dobController});

  @override
  State<DateOfBirthFormField> createState() => _DateOfBirthFormFieldState();
}

class _DateOfBirthFormFieldState extends State<DateOfBirthFormField> {
  @override
  void dispose() {
    super.dispose();
    widget.dobController?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
        hintText: 'Date of Birth',
        controller: widget.dobController,
        validator: (dob){
          if(dob.isNullOrEmpty()){
            return "Please select a date";
          }
        },
        readOnly : true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );

          if (pickedDate != null) {
            setState(() {
              widget.dobController?.text =
              "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
            });
          }
        },
        suffixIcon: IconButton(
          padding: widget.padding ??
              const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20),
          icon: SvgPicture.asset(
            "assets/svgs/calender.svg",
            height: widget.suffixIconHeight ?? 18,
            width: widget.suffixIconWidth ?? 18,
            colorFilter: ColorFilter.mode(
              widget.suffixIconColor ?? ColorsManager.mercury,
              BlendMode.srcIn,
            ),
          ),
          onPressed: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );

            if (pickedDate != null) {
              setState(() {
                widget.dobController?.text =
                "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
              });
            }
          },
        ),
    );
  }
}
