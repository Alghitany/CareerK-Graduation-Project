import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinIconAndSalary extends StatelessWidget {
  final String? salaryRange;

  const CoinIconAndSalary({super.key, required this.salaryRange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0.w, 0.h, 0.w, 34.h),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svgs/coin.svg',
            height: 40.h,
            width: 40.w,
            colorFilter: const ColorFilter.mode(
              ColorsManager.duskyBlue,
              BlendMode.srcIn,
            ),
          ),
          horizontalSpace(16),
          Text(
            salaryRange ?? 'Not specified',
            style: AppTextStyles.font20DunePoppinsMedium,
          ),
        ],
      ),
    );
  }
}
