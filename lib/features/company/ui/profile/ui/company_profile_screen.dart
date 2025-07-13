import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/features/company/ui/profile/ui/widgets/jobs_and_applicants_number/number_of_jobs_and_applicants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/company_bottom_navigation_bar.dart';
import '../../../../../core/widgets/company_floating_action_button.dart';
import '../../widgets/job_delete_bloc_listener.dart';
import '../logic/company_profile_all_job_posts_logic/company_profile_all_job_posts_cubit.dart';
import 'widgets/company_profile_edit_bloc_listener.dart';
import 'widgets/profile_all_job_posts_bloc_builder.dart';
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
                const ProfileAllJobPostsBlocBuilder(),
                const CompanyProfileEditBlocListener(),
                JobDeleteBlocListener(
                  onDeleteSuccess: () {
                    context
                        .read<CompanyProfileAllJobPostsCubit>()
                        .getCompanyAllJobPosts();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
