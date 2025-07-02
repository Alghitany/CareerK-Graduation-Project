import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/cusomer_floating_action_button.dart';
import 'package:carrerk/core/widgets/customer_bottom_navigation_bar.dart';
import 'package:carrerk/features/customer/home/widgets/home_page_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../developer/ui/jobs/search/ui/widgets/filtered_jobs.dart';

class CustomerHomeMainPageScreen extends StatelessWidget {
  const CustomerHomeMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomerBottomNavigationBar(
        selectedIndex: 0,
      ),
      floatingActionButton: const CustomerFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
          child: Column(
            children: [
              const CustomerHomePageTopBar(),
              verticalSpace(40),
              const FilteredJobs()
            ],
          ),
        ),
      ),
    );
  }
}
