import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppChoiceChip extends StatefulWidget {
  final List<String> options;
  final TextStyle selectedTextStyle;
  final TextStyle unSelectedTextStyle;
  final EdgeInsets? contentPadding;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final double? borderRadius;
  final ValueChanged<int>? onSelected;
  final int? initialSelectedIndex;

  const AppChoiceChip({
    super.key,
    required this.options,
    required this.selectedTextStyle,
    required this.unSelectedTextStyle,
    this.onSelected,
    this.contentPadding,
    this.selectedColor,
    this.unSelectedColor,
    this.borderRadius,
    this.initialSelectedIndex = 0,
  });

  @override
  State<AppChoiceChip> createState() => _AppChoiceChipState();
}

class _AppChoiceChipState extends State<AppChoiceChip> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialSelectedIndex!;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.options.length, (index) {
        return Padding(
          padding: index == 0 || index == widget.options.length - 1
              ? EdgeInsets.zero
              : EdgeInsets.symmetric(horizontal: 4.w),
          child: ChoiceChip(
            label: Text(
              widget.options[index],
              style: index == selectedIndex
                  ? widget.selectedTextStyle
                  : widget.unSelectedTextStyle,
            ),
            selected: index == selectedIndex,
            onSelected: (_) {
              setState(() {
                selectedIndex = index;
              });
              widget.onSelected!(index);
            },
            showCheckmark: false,
            padding: widget.contentPadding ??
                EdgeInsets.symmetric(horizontal: 17.w, vertical: 7.h),
            selectedColor: widget.selectedColor ?? ColorsManager.amethystSmoke,
            backgroundColor:
                widget.unSelectedColor ?? ColorsManager.catskillWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 30.r),
            ),
            side: BorderSide.none,
          ),
        );
      }),
    );
  }
}
