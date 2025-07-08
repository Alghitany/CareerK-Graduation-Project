import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/company_bottom_navigation_bar.dart';
import '../../../../../core/widgets/company_floating_action_button.dart';
import '../../../../customer/ui/profile/widgets/all_jobs_list.dart';
import '../../../../customer/ui/profile/widgets/number_of_applicant.dart';
import 'widgets/profile_info_bloc_builder.dart';

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
          padding: EdgeInsets.fromLTRB(16.w, 48.h, 16.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ProfileInfoBlocBuilder(),
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
