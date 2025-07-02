import 'package:carrerk/features/developer/ui/jobs/search/ui/widgets/jobs/jobs_tab.dart';
import 'package:carrerk/features/developer/ui/jobs/search/ui/widgets/services/services_tab.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/app_tab_switcher.dart'
    show AppTabSwitcher;

class JobsAndServicesTabSwitcher extends StatefulWidget {
  const JobsAndServicesTabSwitcher({super.key});

  @override
  State<JobsAndServicesTabSwitcher> createState() =>
      _JobsAndServicesTabSwitcherState();
}

class _JobsAndServicesTabSwitcherState
    extends State<JobsAndServicesTabSwitcher> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTabSwitcher(
          tabs: const ['Jobs', 'Services'],
          selectedIndex: selectedIndex,
          onTabChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          option0: const JobsTab(),
          option1: const ServicesTab(),
        ),
      ],
    );
  }
}
