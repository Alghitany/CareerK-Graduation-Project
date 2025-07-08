// import 'package:carrerk/features/customer/ui/applied/ui/first/widgets/remove_view_profile_buttons.dart';
// import 'package:carrerk/features/customer/ui/applied/ui/secound/widgets/apllied_name_jop_image.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../../../../core/helpers/spacing.dart';
// import '../../../../../../../core/theming/styles.dart';

// class AppliedPeopleContainer extends StatefulWidget {
//   const AppliedPeopleContainer({super.key});

//   @override
//   State<AppliedPeopleContainer> createState() => _AppliedPeopleContainerState();
// }

// class _AppliedPeopleContainerState extends State<AppliedPeopleContainer> {
//   bool isExpanded = false;

//   List<Map<String, dynamic>> jobs = [
//     {
//       'Name': 'Need UI designer to create 12 Screens',
//       'jop': 'Senior UI/UX Designer',
//       'image': 'assets/images/company_logo.png',
//       'description':
//           'Design a user interface for an all-encompassing freelance gig platform app. This app should enable freelancers to sell various services, feature project management tools, and client communication.',
//     },
//     {
//       'jobName': 'Need UI designer to create 12 Screens',
//       'postDate': '6 days ago',
//       'image': 'assets/images/company_logo.png',
//       'description':
//           'Create wireframes and UI elements for a mobile application that connects clients with professional designers. The design must be clean, responsive, and user-centric.',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: jobs.length,
//       itemBuilder: (context, index) {
//         final job = jobs[index];

//         return Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12.r),
//           ),
//           color: Colors.white,
//           elevation: 4,
//           margin: EdgeInsets.only(bottom: 16.h),
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 8.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AplliedNameJopImage(),
//                 verticalSpace(12),
//                 RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: isExpanded
//                             ? job['description']
//                             : job['description'].length > 100
//                                 ? '${job['description'].substring(0, 100)}... '
//                                 : job['description'],
//                         style: AppTextStyles.font13LiverRalewayMedium,
//                       ),
//                       if (!isExpanded && job['description'].length > 100)
//                         TextSpan(
//                           text: 'see more',
//                           style: AppTextStyles.font13DuskyBlueRalewayMedium,
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () => setState(() => isExpanded = true),
//                         ),
//                     ],
//                   ),
//                 ),
//                 verticalSpace(12),
//                 RemoveViewProfileButtons(
//                   onRemove: () {
//                     setState(() {
//                       jobs.removeAt(index);
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:carrerk/features/customer/ui/applied/ui/first/widgets/reject_view_profile_buttons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/theming/styles.dart';
import '../../../data/model/first_screen_model/applications_response_body.dart';

class AppliedPeople extends StatefulWidget {
  final List<ApplicationItem> applications;

  const AppliedPeople({
    super.key,
    required this.applications,
  });

  @override
  State<AppliedPeople> createState() => _AppliedPeopleState();
}

class _AppliedPeopleState extends State<AppliedPeople> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.applications.length,
      itemBuilder: (context, index) {
        final app = widget.applications[index];
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
                    Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: Colors.grey[200],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: (app.profilePicture != null &&
                                app.profilePicture!.isNotEmpty)
                            ? Image.network(
                                app.profilePicture!,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.asset(
                                    'assets/images/company_home_developer_logo.png',
                                    fit: BoxFit.cover,
                                  );
                                },
                              )
                            : Image.asset(
                                'assets/images/company_home_developer_logo.png',
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                    horizontalSpace(6.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          app.name,
                          style:
                              AppTextStyles.font14RangoonGreenPoppinsSemiBold,
                        ),
                        verticalSpace(4),
                        Text(
                          timeago.format(DateTime.parse(app.submittedAt)),
                          style: AppTextStyles.font10GranitePoppinsRegular,
                        ),
                      ],
                    ),
                  ],
                ),
                verticalSpace(12),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Expected Salary: ',
                        style: AppTextStyles.font14LiverRalewayRegular,
                      ),
                      TextSpan(
                        text: app.expectedSalary,
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
                            ? 'Phone: ${app.phone}\nEmail: ${app.email}\nYears of Experience: ${app.yearsOfExperience}'
                            : 'Phone: ${app.phone}',
                        style: AppTextStyles.font13LiverRalewayMedium,
                      ),
                      if (!isExpanded)
                        TextSpan(
                          text: ' see more',
                          style: AppTextStyles.font13DuskyBlueRalewayMedium,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => setState(() => isExpanded = true),
                        ),
                    ],
                  ),
                ),
                verticalSpace(12),
                RemoveViewProfileButtons(
                  applicationId: app.id,
                  onRemove: () {},
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
