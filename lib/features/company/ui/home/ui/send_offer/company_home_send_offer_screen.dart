import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/features/company/ui/home/ui/send_offer/widgets/hire_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/developer_details/developer_details.dart';
import '../widgets/name_title_and_image/name_title_and_image.dart';
import '../widgets/salary_and_location/salary_and_location.dart';
import '../widgets/see_details_top_bar.dart';

class CompanyHomeSendOfferScreen extends StatelessWidget {
  const CompanyHomeSendOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w, 24.h, 16.0.w, 0.h),
          child: Column(
            children: [
              const SeeDetailsTopBar(),
              verticalSpace(56),
              const NameTitleAndImage(
                applicantName: '',
                trackTitle: '',
                profileImageUrl: '',
              ),
              verticalSpace(64),
              const SalaryAndLocation(
                salaryRange: '',
                location: '',
              ),
              verticalSpace(40),
              const DeveloperDetails(
                details: '',
              ),
              const HireButton()
            ],
          ),
        ),
      ),
    );
  }
}
