import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/company_floating_action_button.dart';
import 'package:carrerk/features/company/ui/home/main_page/widgets/home_page_top_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/company_bottom_navigation_bar.dart';
import 'widgets/available_people_text_and_list.dart';
import 'widgets/recent_people_applied.dart';

class CompanyHomeMainPageScreen extends StatelessWidget {
  const CompanyHomeMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: Check if the bottom navigation bar can be one for the whole app instead of using two
      bottomNavigationBar: const CompanyBottomNavigationBar(
        selectedIndex: 0,
      ),
      floatingActionButton: const CompanyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            const HomePageTopBar(),
            verticalSpace(40),
            const AvailablePeopleTextAndList(),
            verticalSpace(24),
            const RecentPeopleApplied(),
          ],
        ),
      ),
    );
  }
}
