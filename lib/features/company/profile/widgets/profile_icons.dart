import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileIcons extends StatelessWidget {
  const ProfileIcons({super.key});

  //TODO: This widget is duplicated should be reviewed
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        customCirclePhoneMessageLocationContainer(
          icon: "assets/svgs/phone_outlined.svg",
          onTap: () {
            //TODO Navigation Here
          },
        ),
        horizontalSpace(24),
        customCirclePhoneMessageLocationContainer(
          icon: "assets/svgs/mail_outlined.svg",
          onTap: () {
            //TODO Navigation Here
          },
        ),
        horizontalSpace(24),
        customCirclePhoneMessageLocationContainer(
          icon: "assets/svgs/location_pin_outlined.svg",
          onTap: () {
            //TODO Navigation Here
          },
        ),
        const Spacer(),
      ],
    );
  }

  Widget customCirclePhoneMessageLocationContainer(
      {required icon, required onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56.w,
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          border: Border.all(
            color: ColorsManager.blueBerry,
            width: 1,
          ),
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          icon,
          height: 21.h,
          width: 21.w,
          colorFilter:
          const ColorFilter.mode(ColorsManager.duskyBlue, BlendMode.srcIn),
        ),
      ),
    );
  }
}
