import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../number_of_jobs_and_applicants_bloc_builder.dart';

class NumberOfJobsAndApplicants extends StatelessWidget {
  const NumberOfJobsAndApplicants({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 77.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const JobsNumberBlocBuilder(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: const VerticalDivider(color: ColorsManager.pastelGrey),
          ),
          const ApplicantsNumberBlocBuilder(),
        ],
      ),
    );
  }
}
