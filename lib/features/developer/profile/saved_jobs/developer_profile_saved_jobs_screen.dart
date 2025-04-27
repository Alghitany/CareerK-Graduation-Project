import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/features/developer/profile/saved_jobs/widgets/saved_jobs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperProfileSavedJobsScreen extends StatelessWidget {
  const DeveloperProfileSavedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppBackIcon(),
                verticalSpace(24),
                //TODO: Maybe the job container can be reusable component
                const SavedJobsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
