import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_tab_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/company_bottom_navigation_bar.dart';
import '../../../../core/widgets/company_floating_action_button.dart';
import 'widgets/all_jobs.dart';
import 'widgets/chats.dart';

class CompanyJobsScreen extends StatelessWidget {
  const CompanyJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CompanyBottomNavigationBar(
        selectedIndex: 2,
      ),
      floatingActionButton: const CompanyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.w, 0.h, 16.w, 0.h),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      //TODO: SEARCH IN THE SCREEN SHOULD ADD AN TEXT FIELD FOR IT
                    },
                    icon: SvgPicture.asset(
                      'assets/svgs/search.svg',
                      height: 22.h,
                      width: 22.w,
                      colorFilter:
                          const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
              verticalSpace(8),
              const AppTabSwitcher(
                tabs: ['All Jobs', 'Chats'],
                option0: AllJobs(),
                option1: Chats(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
