import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PriceAndRecentFilters extends StatelessWidget {
  final List<String> items;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  const PriceAndRecentFilters({
    super.key,
    required this.selectedValue,
    required this.onChanged,
    this.items = const ['Highest Paid', 'Lowest Paid', 'Recent'],
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 32.h,
        width: 140.w,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
        decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.mercury),
          borderRadius: BorderRadius.circular(24.r),
          color: ColorsManager.porcelain,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectedValue,
            isExpanded: true,
            hint: Center(
              child: Text(
                selectedValue ?? 'Sort',
                style: AppTextStyles.font14LiverPoppinsMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/svgs/keyboard_arrow_down.svg',
              height: 4.h,
              width: 7.w,
              colorFilter: const ColorFilter.mode(
                ColorsManager.liver,
                BlendMode.srcIn,
              ),
            ),
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: AppTextStyles.font14LiverPoppinsMedium,
                ),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
