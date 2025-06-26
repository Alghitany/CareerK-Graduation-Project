import 'package:carrerk/features/customer/applied/first/widgets/remove_view_profile_buttons.dart';
import 'package:carrerk/features/customer/applied/secound/widgets/apllied_name_jop_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';

class AppliedPeopleContainer extends StatefulWidget {
  const AppliedPeopleContainer({super.key});

  @override
  State<AppliedPeopleContainer> createState() => _AppliedPeopleContainerState();
}

class _AppliedPeopleContainerState extends State<AppliedPeopleContainer> {
  bool isExpanded = false;

  List<Map<String, dynamic>> jobs = [
    {
      'Name': 'Need UI designer to create 12 Screens',
      'jop': 'Senior UI/UX Designer',
      'image': 'assets/images/company_logo.png',
      'description':
          'Design a user interface for an all-encompassing freelance gig platform app. This app should enable freelancers to sell various services, feature project management tools, and client communication.',
    },
    {
      'jobName': 'Need UI designer to create 12 Screens',
      'postDate': '6 days ago',
      'image': 'assets/images/company_logo.png',
      'description':
          'Create wireframes and UI elements for a mobile application that connects clients with professional designers. The design must be clean, responsive, and user-centric.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: jobs.length,
      itemBuilder: (context, index) {
        final job = jobs[index];

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
                AplliedNameJopImage(),
                verticalSpace(12),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: isExpanded
                            ? job['description']
                            : job['description'].length > 100
                                ? '${job['description'].substring(0, 100)}... '
                                : job['description'],
                        style: AppTextStyles.font13LiverRalewayMedium,
                      ),
                      if (!isExpanded && job['description'].length > 100)
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
                RemoveViewProfileButtons(
                  onRemove: () {
                    setState(() {
                      jobs.removeAt(index);
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
