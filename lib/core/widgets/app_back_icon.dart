import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBackIcon extends StatelessWidget {
  const AppBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: (){
          context.pop();
        },
        child: Container(
          width: 32.w,
          height: 32.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: ColorsManager.mercury
              )
          ),
          child: SvgPicture.asset(
            'assets/svgs/left_arrow.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
