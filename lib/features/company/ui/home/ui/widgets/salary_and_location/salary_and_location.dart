import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SalaryAndLocation extends StatelessWidget {
  final String salaryRange;
  final String location;

  const SalaryAndLocation({
    super.key,
    required this.salaryRange,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.w, 0.h, 0.w, 0.h),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/coin.svg',
                height: 37.h,
                width: 34.w,
                colorFilter: const ColorFilter.mode(
                    ColorsManager.duskyBlue, BlendMode.srcIn),
              ),
              horizontalSpace(20),
              Text(
                salaryRange,
                style: AppTextStyles.font20DunePoppinsMedium,
              )
            ],
          ),
          verticalSpace(36),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/location_pin_filled.svg',
                height: 34.h,
                width: 28.w,
                colorFilter: const ColorFilter.mode(
                    ColorsManager.duskyBlue, BlendMode.srcIn),
              ),
              horizontalSpace(40),
              Text(
                location,
                style: AppTextStyles.font20DunePoppinsMedium,
              )
            ],
          )
        ],
      ),
    );
  }
}
