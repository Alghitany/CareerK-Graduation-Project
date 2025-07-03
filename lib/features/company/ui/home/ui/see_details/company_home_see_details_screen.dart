import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/developer_details.dart';
import '../widgets/name_title_and_image.dart';
import '../widgets/salary_and_location.dart';
import '../widgets/see_details_top_bar.dart';
import 'widgets/company_update_application_status_bloc_builder.dart';
import 'widgets/company_update_application_status_bloc_listener.dart';

class CompanyHomeSeeDetailsScreen extends StatelessWidget {
  final String applicationId;

  const CompanyHomeSeeDetailsScreen({super.key, required this.applicationId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.0.w, 24.h, 16.0.w, 0.h),
              child: Column(
                children: [
                  const SeeDetailsTopBar(),
                  verticalSpace(56),
                  const NameTitleAndImage(),
                  verticalSpace(64),
                  const SalaryAndLocation(),
                  verticalSpace(40),
                  const DeveloperDetails(),
                  CompanyUpdateApplicationStatusBlocBuilder(
                    applicationId: applicationId,
                  ),
                ],
              ),
            ),
          ),
          const CompanyUpdateApplicationStatusBlocListener(),
        ],
      ),
    );
  }
}
