// import 'package:carrerk/core/helpers/extensions.dart';
// import 'package:carrerk/core/theming/colors.dart';
// import 'package:carrerk/core/widgets/app_choice_chip.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../../../../../core/helpers/spacing.dart';
// import '../../../../../../../../core/routing/routes.dart';
// import '../../../../../../../../core/theming/styles.dart';

// class CustomerJobs extends StatefulWidget {
//   const CustomerJobs({super.key});

//   @override
//   State<CustomerJobs> createState() => _CustomerJobsState();
// }

// class _CustomerJobsState extends State<CustomerJobs> {
//   bool isExpanded = false;
//   final List<Map<String, dynamic>> jobs = [
//     {
//       'title': 'Need UI designer to create 12 Screens',
//       'created': '6 days ago',
//       'budget_range': 200,
//       'description':
//           'Design a user interface for an all-encompassing freelance gig platform app. This app should enable freelancers to sell various services, feat...',
//       'required_skills': ['UI/UX', 'App design', 'Figma', 'Layout Design'],
//     },
//     {
//       'title': 'Need UI designer to create 12 Screens',
//       'created': '6 days ago',
//       'budget_range': 200,
//       'description':
//           'Design a user interface for an all-encompassing freelance gig platform app. This app should enable freelancers to sell various services, feat...',
//       'required_skills': ['UI/UX', 'App design', 'Figma', 'Layout Design'],
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 230.h * jobs.length,
//       width: double.infinity.w,
//       child: ListView.builder(
//         scrollDirection: Axis.vertical,
//         itemCount: jobs.length,
//         itemBuilder: (context, index) {
//           final job = jobs[index];
//           return GestureDetector(
//             onTap: () {
//               context.pushNamed(Routes.developerJobsServiceDetailsScreen);
//             },
//             child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 color: Colors.white,
//                 elevation: 4,
//                 margin: EdgeInsets.only(bottom: 16.h),
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 8.h),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             job['jobName'],
//                             style:
//                                 AppTextStyles.font14RangoonGreenPoppinsSemiBold,
//                           ),
//                         ],
//                       ),
//                       verticalSpace(4),
//                       Text(
//                         job['postDate'],
//                         style: AppTextStyles.font10GranitePoppinsRegular,
//                       ),
//                       verticalSpace(12),
//                       Text.rich(
//                         TextSpan(
//                           children: [
//                             TextSpan(
//                               text: 'Budget: ',
//                               style: AppTextStyles.font14LiverRalewayRegular,
//                             ),
//                             TextSpan(
//                               text: '${job['budget']}\$',
//                               style: AppTextStyles
//                                   .font14RangoonGreenRalewayMedium, // e.g. stronger style
//                             ),
//                           ],
//                         ),
//                       ),
//                       verticalSpace(12),
//                       RichText(
//                         text: TextSpan(
//                           children: [
//                             TextSpan(
//                               text: isExpanded
//                                   ? job['description']
//                                   : job['description'].length > 100
//                                       ? '${job['description'].substring(0, 100)}... '
//                                       : job['description'],
//                               style: AppTextStyles.font13LiverRalewayMedium,
//                             ),
//                             if (!isExpanded && job['description'].length > 100)
//                               TextSpan(
//                                 text: 'see more',
//                                 style:
//                                     AppTextStyles.font13DuskyBlueRalewayMedium,
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap =
//                                       () => setState(() => isExpanded = true),
//                               ),
//                           ],
//                         ),
//                       ),
//                       verticalSpace(12),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             AppChoiceChip(
//                               options: List<String>.from(job['keywords']),
//                               selectedTextStyle:
//                                   AppTextStyles.font12GraniteRalewayRegular,
//                               unSelectedTextStyle:
//                                   AppTextStyles.font12GraniteRalewayRegular,
//                               selectedColor: ColorsManager.porcelain,
//                               unSelectedColor: ColorsManager.porcelain,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 )),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_choice_chip.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../core/theming/styles.dart';
import '../../model/model/customer_home_response_body.dart';

class CustomerJobs extends StatefulWidget {
  final List<ServiceItem> jobs;

  const CustomerJobs({
    super.key,
    required this.jobs,
  });

  @override
  State<CustomerJobs> createState() => _CustomerJobsState();
}

class _CustomerJobsState extends State<CustomerJobs> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // makes it fit its children
      // disable own scrolling
      itemCount: widget.jobs.length,
      itemBuilder: (context, index) {
        final job = widget.jobs[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          color: Colors.white,
          elevation: 4,
          margin: EdgeInsets.only(bottom: 16.h),
          child: Padding(
            padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      job.title,
                      style: AppTextStyles.font14RangoonGreenPoppinsSemiBold,
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          context.pushNamed(
                              Routes.developerJobsServiceDetailsScreen,
                              arguments: AppArgument(serviceId: job.id));
                        },
                        icon: Icon(Icons.preview)),
                    horizontalSpace(5.w),
                    IconButton(
                        onPressed: () {
                          print("application ID : ${job.id}");
                          context.pushNamed(Routes.customerAppliedFirstScreen,
                              arguments: AppArgument(applicationId: job.id));
                        },
                        icon: Image.asset(
                          'assets/images/user.png',
                          color: Colors.black,
                        )),
                  ],
                ),
                verticalSpace(4),
                Text(
                  timeago.format(DateTime.parse(job.createdAt)),
                  style: AppTextStyles.font10GranitePoppinsRegular,
                ),
                verticalSpace(12),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Budget: ',
                        style: AppTextStyles.font14LiverRalewayRegular,
                      ),
                      TextSpan(
                        text: job.budgetRange,
                        style: AppTextStyles.font14RangoonGreenRalewayMedium,
                      ),
                    ],
                  ),
                ),
                verticalSpace(12),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: isExpanded
                            ? job.description
                            : job.description.length > 100
                                ? '${job.description.substring(0, 100)}... '
                                : job.description,
                        style: AppTextStyles.font13LiverRalewayMedium,
                      ),
                      if (!isExpanded && job.description.length > 100)
                        TextSpan(
                          text: 'see more',
                          style: AppTextStyles.font13DuskyBlueRalewayMedium,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => setState(() => isExpanded = true),
                        ),
                    ],
                  ),
                ),
                verticalSpace(12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AppChoiceChip(
                        options: job.requiredSkills,
                        selectedTextStyle:
                            AppTextStyles.font12GraniteRalewayRegular,
                        unSelectedTextStyle:
                            AppTextStyles.font12GraniteRalewayRegular,
                        selectedColor: ColorsManager.porcelain,
                        unSelectedColor: ColorsManager.porcelain,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
