import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClientLocation extends StatelessWidget {
  final String? location;

  const ClientLocation({super.key, this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svgs/location_pin_filled.svg',
            height: 24.h,
            width: 24.w,
            colorFilter: const ColorFilter.mode(
              ColorsManager.duskyBlue,
              BlendMode.srcIn,
            ),
          ),
          horizontalSpace(12),
          Text(location ?? '', style: AppTextStyles.font15LiverPoppinsMedium),
        ],
      ),
    );
  }
}
