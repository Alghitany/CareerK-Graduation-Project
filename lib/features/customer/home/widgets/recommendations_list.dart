// import 'package:carrerk/core/helpers/extensions.dart';
// import 'package:carrerk/core/routing/app_argument.dart';
// import 'package:carrerk/core/theming/colors.dart';
// import 'package:carrerk/core/widgets/app_choice_chip.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../core/helpers/spacing.dart';
// import '../../../../core/routing/routes.dart';
// import '../../../../core/theming/styles.dart';

// class RecommendationsList extends StatefulWidget {
//   const RecommendationsList({super.key});

//   @override
//   State<RecommendationsList> createState() => _RecommendationsListState();
// }

// class _RecommendationsListState extends State<RecommendationsList> {
//   bool isExpanded = false;
//   final List<Map<String, dynamic>> jobs = [
//     {
//       'jobName': 'Need UI designer to create 12 Screens',
//       'postDate': '6 days ago',
//       'budget': 200,
//       'description':
//           'Design a user interface for an all-encompassing freelance gig platform app. This app should enable freelancers to sell various services, feat...',
//       'keywords': ['UI/UX', 'App design', 'Figma', 'Layout Design'],
//       'isBookmarked': false
//     },
//     {
//       'jobName': 'Need UI designer to create 12 Screens',
//       'postDate': '6 days ago',
//       'budget': 200,
//       'description':
//           'Design a user interface for an all-encompassing freelance gig platform app. This app should enable freelancers to sell various services, feat...',
//       'keywords': ['UI/UX', 'App design', 'Figma', 'Layout Design'],
//       'isBookmarked': false
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
//               context.pushNamed(Routes.developerJobsServiceDetailsScreen,
//                   arguments: AppArgument(
//                       serviceId: 'edba0012-c0fe-4db3-ae26-96ccde918dee'));
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
//                           horizontalSpace(21),
//                           GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 job['isBookmarked'] = !job['isBookmarked'];
//                               });
//                             },
//                             child: SvgPicture.asset(
//                               job['isBookmarked']
//                                   ? "assets/svgs/bookmark_filled.svg"
//                                   : "assets/svgs/bookmark_outlined.svg",
//                               width: 22.w,
//                               height: 22.h,
//                             ),
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
