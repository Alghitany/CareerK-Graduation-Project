// import 'package:carrerk/core/helpers/spacing.dart';
// import 'package:carrerk/core/theming/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../../core/theming/colors.dart';

// class AllJobsList extends StatefulWidget {
//   const AllJobsList({super.key});

//   @override
//   State<AllJobsList> createState() => _AllJobsListState();
// }

// class _AllJobsListState extends State<AllJobsList> {
//   final List<Map<String, String>> jobs = [
//     {
//       'title': "UX Designer",
//       'description':
//           "Design a user interface for an all-encompassing freelance... see more",
//       'budegt': '260 \$'
//     },
//     {
//       'title': "UX Designer",
//       'description':
//           "Design a user interface for an all-encompassing freelance... see more",
//       'budegt': '260 \$'
//     },
//     {
//       'title': "UX Designer",
//       'description':
//           "Design a user interface for an all-encompassing freelance... see more",
//       'budegt': '260 \$'
//     },
//   ];

//   // void _deleteJob(int index) {
//   //   setState(() {
//   //     jobs.removeAt(index);
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Align(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             'All Jobs',
//             style: AppTextStyles.font14RangoonGreenPoppinsSemiBold,
//           ),
//         ),
//         verticalSpace(12),
//         SizedBox(
//           height: MediaQuery.of(context).size.height - 100,
//           child: ListView.builder(
//             itemCount: jobs.length,
//             itemBuilder: (context, index) {
//               final job = jobs[index];
//               return Card(
//                   color: Colors.white,
//                   elevation: 0,
//                   margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 16.h),
//                   shape: RoundedRectangleBorder(
//                       side: const BorderSide(color: ColorsManager.pastelGrey),
//                       borderRadius: BorderRadius.circular(16.r)),
//                   child: ListTile(
//                     leading: Column(
//                       children: [
//                         Text(job['title'] ?? '',
//                             style: AppTextStyles.font16BlackPoppinsMedium),
//                         Text(
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           job['description'] ?? '',
//                           style: AppTextStyles.font10RangoonGreenPoppinsRegular,
//                         ),
//                         Text(
//                           job['budegt'] ?? '',
//                           style: AppTextStyles.font10RangoonGreenPoppinsRegular,
//                         ),
//                       ],
//                     ),
//                     trailing: TextButton(
//                       onPressed: () {
//                         // _deleteJob(index);
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                             border: Border.all(
//                                 color: ColorsManager.primaryWildBlueYonder)),
//                         child: Text(
//                           "apply",
//                           style: AppTextStyles.font12ArtyClickRedPoppinsRegular,
//                         ),
//                       ),
//                     ),
//                   ));
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';

class AllJobsList extends StatefulWidget {
  const AllJobsList({super.key});

  @override
  State<AllJobsList> createState() => _AllJobsListState();
}

class _AllJobsListState extends State<AllJobsList> {
  final List<Map<String, String>> jobs = [
    {
      'title': "UX Designer",
      'description':
          "Design a user interface for an all-encompassing freelance... see more",
      'budegt': '260 \$'
    },
    {
      'title': "Flutter Developer",
      'description':
          "Build a responsive cross-platform mobile application using Flutter... see more",
      'budegt': '320 \$'
    },
    {
      'title': "Backend Engineer",
      'description':
          "Develop and maintain server-side APIs with Node.js... see more",
      'budegt': '400 \$'
    },
    {
      'title': "Backend Engineer",
      'description':
          "Develop and maintain server-side APIs with Node.js... see more",
      'budegt': '400 \$'
    },
    {
      'title': "Backend Engineer",
      'description':
          "Develop and maintain server-side APIs with Node.js... see more",
      'budegt': '400 \$'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'All Jobs',
            style: AppTextStyles.font14RangoonGreenPoppinsSemiBold,
          ),
        ),
        verticalSpace(12),
        SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: ListView.builder(
            itemCount: jobs.length,
            itemBuilder: (context, index) {
              final job = jobs[index];
              return Card(
                color: Colors.white,
                elevation: 0,
                margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 16.h),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: ColorsManager.pastelGrey),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              job['title'] ?? '',
                              style: AppTextStyles.font16BlackPoppinsMedium,
                            ),
                            verticalSpace(4),
                            Text(
                              job['description'] ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles
                                  .font10RangoonGreenPoppinsRegular,
                            ),
                            verticalSpace(4),
                            Text(
                              job['budegt'] ?? '',
                              style: AppTextStyles
                                  .font10RangoonGreenPoppinsRegular,
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // _deleteJob(index);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorsManager.primaryWildBlueYonder),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            "Apply",
                            style:
                                AppTextStyles.font12WaikawaGreyPoppinsRegular,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
