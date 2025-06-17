import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/all_categories_job.dart';

class DeveloperJobsAllCategoriesScreen extends StatelessWidget {
  const DeveloperJobsAllCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w, 16.h, 16.w, 0.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(8),
              Text(
                'All Categories',
                style: AppTextStyles.font24DunePoppinsMedium,
              ),
              verticalSpace(16),
              AppSearchTextFormField(
                readOnly: false,
                shadowColor: Colors.black.withOpacity(0.1),
              ),
              verticalSpace(24),
              //TODO: Pass the real categories list
              const AllCategoriesJob()
            ],
          ),
        ),
      ),
    );
  }
}
