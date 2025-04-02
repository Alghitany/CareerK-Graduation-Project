import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppChoiceChip extends StatefulWidget {
  final List<String> options;
  final TextStyle selectedTextStyle;
  final TextStyle unSelectedTextStyle;
  final EdgeInsets? contentPadding;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final double? borderRadius;
  const AppChoiceChip({
    super.key,
    required this.options,
    required this.selectedTextStyle,
    required this.unSelectedTextStyle,
    this.contentPadding,
    this.selectedColor,
    this.unSelectedColor,
    this.borderRadius});

  @override
  State<AppChoiceChip> createState() => _AppChoiceChipState();
}

class _AppChoiceChipState extends State<AppChoiceChip> {
  int selectedIndex = 1; // Default selected index

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.options.length, (index) {
        return Padding(
          padding: index == 0 || index == widget.options.length - 1
              ? EdgeInsets.zero
              : EdgeInsets.symmetric(horizontal: 4.w),
          child: ChoiceChip(
            label: Text(
              widget.options[index],
              style: index == selectedIndex ? widget.selectedTextStyle
                  : widget.unSelectedTextStyle,
            ),
            selected: index == selectedIndex,
            onSelected: (bool selected) {
              setState(() {
                selectedIndex = index;
              });
            },
            showCheckmark: false,
            padding: widget.contentPadding ?? EdgeInsets.symmetric(horizontal: 17.w,vertical: 7.h),
            selectedColor: widget.selectedColor ?? ColorsManager.amethystSmoke,
            backgroundColor: widget.unSelectedColor ?? ColorsManager.catskillWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 30),
            ),
            side: BorderSide.none,
          ),
        );
      }),
    );
  }
}