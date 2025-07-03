// import 'package:carrerk/core/helpers/spacing.dart';
// import 'package:carrerk/core/theming/colors.dart';
// import 'package:carrerk/core/theming/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class AppliedPastJobs extends StatelessWidget {
//   const AppliedPastJobs({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.fromLTRB(12.w, 11.h, 24.w, 16.h),
//       width: double.infinity.w,
//       height: 79.h,
//       child: Row(
//         children: [
//           CircleAvatar(
//             radius: 24.r,
//             backgroundImage: const AssetImage('assets/images/company_logo.png'),
//           ),
//           horizontalSpace(12),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text('UBER', style: AppTextStyles.font10LiverPoppinsRegular),
//               verticalSpace(2),
//               Text('UI Designer',
//                   style: AppTextStyles.font16BlackPoppinsMedium),
//               verticalSpace(2),
//               Text('Mansoura,Egypt.',
//                   style: AppTextStyles.font10RangoonGreenPoppinsRegular),
//             ],
//           ),
//           const Spacer(),
//           Text(
//             "Sep 2020 - June 2024",
//             style: AppTextStyles.font12WaikawaGreyPoppinsRegular,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppliedPastJobs extends StatelessWidget {
  final String company;
  final String title;
  final String location;
  final String period;
  final String logoPath;

  const AppliedPastJobs({
    super.key,
    required this.company,
    required this.title,
    required this.location,
    required this.period,
    required this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.fromLTRB(12.w, 11.h, 24.w, 16.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundImage: AssetImage(logoPath),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(company, style: AppTextStyles.font16BlackPoppinsMedium),
                verticalSpace(2),
                Text(title,
                    style: AppTextStyles.font10RangoonGreenPoppinsRegular),
                verticalSpace(2),
                Text(location, style: AppTextStyles.font10LiverPoppinsRegular),
              ],
            ),
          ),
          Text(period, style: AppTextStyles.font12WaikawaGreyPoppinsRegular),
        ],
      ),
    );
  }
}
