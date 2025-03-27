import 'package:carrerk/core/helpers/font_weight_helper.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles{
  static TextStyle font34SecondaryWildBlueYonderPoppinsSemiBold = TextStyle(
    fontSize: 34.sp,
    color: ColorsManager.secondaryWildBlueYonder,
    fontFamily: 'Poppins',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font14SecondaryWildBlueYonderPoppinsSemiBold = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.secondaryWildBlueYonder,
    fontFamily: 'Poppins',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font32BlackPoppinsSemiBold = TextStyle(
    fontSize: 32.sp,
    color: Colors.black,
    fontFamily: 'Poppins',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font16RangoonGreenPoppinsRegular = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.rangoonGreen,
    fontFamily: 'Poppins',
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14WhitePoppinsMedium = TextStyle(
    fontSize: 14.sp,
    color: Colors.white,
    fontFamily: 'Poppins',
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14IronSideGreyPoppinsMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.ironSideGrey,
    fontFamily: 'Poppins',
    fontWeight: FontWeightHelper.medium,
  );
}