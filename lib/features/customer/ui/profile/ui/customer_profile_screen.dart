import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';

import 'package:carrerk/features/customer/ui/profile/ui/widgets/all_jobs_list.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/call_and_chat_Icons.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/number_of_applicant.dart'
    show NumberOfJobsAndApplicants;
import 'package:carrerk/features/customer/ui/profile/ui/widgets/profile_image_name_and_location.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerProfileScreen extends StatelessWidget {
  const CustomerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Here hardcoded, replace with cubit logic later
    const applicantsCount = 100;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 48.h, 16.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBackIcon(),
                const ProfileImageNameAndLocation(),
                verticalSpace(16),
                const CallAndChatIcons(),
                verticalSpace(11),
                NumberOfJobsAndApplicants(),
                verticalSpace(32),
                const AllJobsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
