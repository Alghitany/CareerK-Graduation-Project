import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/cusomer_floating_action_button.dart';
import 'package:carrerk/core/widgets/customer_bottom_navigation_bar.dart';
import 'package:carrerk/features/company/ui/profile/widgets/profile_image_name_and_location.dart';
import 'package:carrerk/features/customer/profile/widgets/all_jobs_list.dart';
import 'package:carrerk/features/customer/profile/widgets/follow_contactus_buttons.dart';
import 'package:carrerk/features/customer/profile/widgets/number_of_applicant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerProfileScreen extends StatelessWidget {
  const CustomerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomerBottomNavigationBar(
        selectedIndex: 3,
      ),
      floatingActionButton: const CustomerFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 48.h, 16.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ProfileImageNameAndLocation(),
                verticalSpace(16),
                const FollowContactusButtons(),
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
