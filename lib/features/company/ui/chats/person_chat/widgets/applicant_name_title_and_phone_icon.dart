import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/theming/colors.dart';

class ApplicantNameTitleAndPhoneIcon extends StatefulWidget {
  const ApplicantNameTitleAndPhoneIcon({super.key});

  @override
  State<ApplicantNameTitleAndPhoneIcon> createState() =>
      _ApplicantNameTitleAndPhoneIconState();
}

class _ApplicantNameTitleAndPhoneIconState
    extends State<ApplicantNameTitleAndPhoneIcon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/company_home_developer_logo.png",
          width: 60.w,
          height: 60.h,
        ),
        horizontalSpace(10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Client Name',
                style: AppTextStyles.font16RangoonGreenPoppinsSemiBold),
            verticalSpace(8),
            Text('UI Designer', style: AppTextStyles.font14NobelPoppinsRegular),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            //TODO: I don't know should we call him?
          },
          child: CircleAvatar(
            radius: 16.r,
            backgroundColor: ColorsManager.porcelain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SvgPicture.asset(
                "assets/svgs/phone_outlined.svg",
                height: 16.h,
                width: 16.w,
                colorFilter: const ColorFilter.mode(
                  ColorsManager.lemonGrass,
                  BlendMode.srcIn,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
