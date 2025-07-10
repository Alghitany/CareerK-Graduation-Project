import 'package:carrerk/core/helpers/spacing.dart';

import 'package:carrerk/features/customer/profile/ui/customer_profile_edit_bloc_listener.dart';
import 'package:carrerk/features/customer/profile/ui/profile_all_job_posts_bloc_builder.dart';
import 'package:carrerk/features/customer/profile/ui/profile_info_bloc_builder.dart';
import 'package:carrerk/features/customer/profile/ui/widgets/jobs_and_applicants_number/number_of_jobs_and_applicants.dart';
import 'package:carrerk/features/developer/ui/community/chat/widgets/exit_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/company_bottom_navigation_bar.dart';
import '../../../../../core/widgets/company_floating_action_button.dart';

class CustomerProfileScreen extends StatelessWidget {
  const CustomerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 48.h, 16.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ExitIcon(),
                verticalSpace(16),
                const ProfileInfoBlocBuilder(),
                verticalSpace(11),
                const NumberOfJobsAndApplicants(),
                verticalSpace(32),
                const ProfileAllJobPostsBlocBuilder(),
                const CustomerProfileEditBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
