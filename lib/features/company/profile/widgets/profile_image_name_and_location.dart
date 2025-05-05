import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImageNameAndLocation extends StatelessWidget {
  const ProfileImageNameAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 104.w,
            height: 104.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(64.r),
                image: const DecorationImage(
                    image: AssetImage('assets/images/company_logo.png'))),
          ),
        ),
        verticalSpace(34),
        Text(
          'Company Name',
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        ),
        verticalSpace(8),
        Text(
          'Mansoura',
          style: AppTextStyles.font14GranitePoppinsMedium,
        ),
      ],
    );
  }
}
