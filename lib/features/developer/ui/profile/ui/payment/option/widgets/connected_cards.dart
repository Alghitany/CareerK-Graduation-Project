import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/theming/styles.dart';

class ConnectedCards extends StatelessWidget {
  const ConnectedCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          color: Colors.white,
          child: Row(
            children: [
              const Spacer(),
              Padding(
                padding: EdgeInsets.fromLTRB(0.w, 21.h, 18.w, 21.h),
                child: Text(
                  "Connected",
                  style: AppTextStyles.font14GlaucousPoppinsSemiBold,
                ),
              ),
            ],
          ),
        ),
        verticalSpace(32),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          color: Colors.white, // Background color
          child: Row(
            children: [
              const Spacer(),
              Padding(
                padding: EdgeInsets.fromLTRB(0.w, 21.h, 18.w, 21.h),
                child: Text(
                  "Connected",
                  style: AppTextStyles.font14GlaucousPoppinsSemiBold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
