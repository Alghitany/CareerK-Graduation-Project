import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/features/company/profile/widgets/all_jobs_list.dart';
import 'package:carrerk/features/company/profile/widgets/number_of_jobs_and_applicants.dart';
import 'package:carrerk/features/company/profile/widgets/profile_icons.dart';
import 'package:carrerk/features/company/profile/widgets/profile_image_name_and_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/company_bottom_navigation_bar.dart';
import '../../../core/widgets/company_floating_action_button.dart';

class CompanyProfileScreen extends StatelessWidget {
  const CompanyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CompanyBottomNavigationBar(
        selectedIndex: 3,
      ),
      floatingActionButton: const CompanyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w,48.h,16.w,0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ProfileImageNameAndLocation(),
                verticalSpace(16),
                const ProfileIcons(),
                verticalSpace(11),
                const NumberOfJobsAndApplicants(),
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
