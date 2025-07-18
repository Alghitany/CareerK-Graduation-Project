import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/developer_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/jobs_and_services_tab_switcher.dart';
import 'widgets/top_bar_and_search_field.dart';

class DeveloperJobsSearchScreen extends StatelessWidget {
  const DeveloperJobsSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const DeveloperBottomNavigationBar(
        selectedIndex: 2,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarAndSearchField(),
              verticalSpace(24),
              const JobsAndServicesTabSwitcher(),
            ],
          ),
        ),
      ),
    );
  }
}
