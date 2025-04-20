import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_tab_switcher.dart';
import 'package:carrerk/features/company/jobs/widgets/all_jobs.dart';
import 'package:carrerk/features/company/jobs/widgets/chats.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/company_bottom_navigation_bar.dart';
import '../../../core/widgets/company_floating_action_button.dart';

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
              verticalSpace(48),
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
