import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';

import 'package:carrerk/features/customer/ui/profile/ui/widgets/all_jobs_list.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/call_and_chat_Icons.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/customer_all_jobs_bloc_builder.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/number_of_jobs_and_applicants_bloc_builder.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/profile_bloc_builder.dart';
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
                const CustomerProfileBlocBuilder(),
                verticalSpace(16),
                const CallAndChatIcons(),
                verticalSpace(11),
                NumberOfJobsAndApplicantsBlocBuilder(
                  applicantsCount: applicantsCount,
                ),
                verticalSpace(32),
                const CustomerAllJobsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
