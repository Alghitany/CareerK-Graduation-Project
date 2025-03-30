import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DateOfBirthFormField extends StatefulWidget {
  final TextEditingController? dobController;

  const DateOfBirthFormField({super.key, this.dobController});

  @override
  State<DateOfBirthFormField> createState() => _DateOfBirthFormFieldState();
}

class _DateOfBirthFormFieldState extends State<DateOfBirthFormField> {
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: '2001-10-1',
      controller: widget.dobController,
      validator: (dob) {
        if (dob.isNullOrEmpty()) {
          return "Please select a date";
        }
      },
      readOnly: true,
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
        padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 20.h),
        icon: SvgPicture.asset(
          "assets/svgs/calender.svg",
          height: 18.h,
          width: 18.w,
          colorFilter: const ColorFilter.mode(
            ColorsManager.mercury,
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
