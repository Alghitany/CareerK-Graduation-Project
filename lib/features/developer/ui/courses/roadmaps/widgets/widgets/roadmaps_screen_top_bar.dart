import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theming/styles.dart';
import '../../../../../../../core/widgets/app_back_icon.dart';


class RoadmapsScreenTopBar extends StatelessWidget {
  const RoadmapsScreenTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(8.w, 0.h, 0.w, 0.h),
            child: const AppBackIcon(),
          ),
        ),
        Text(
          'Roadmaps',
          style: AppTextStyles.font24BlackPoppinsRegular,
        ),
      ],
    );
  }
}
