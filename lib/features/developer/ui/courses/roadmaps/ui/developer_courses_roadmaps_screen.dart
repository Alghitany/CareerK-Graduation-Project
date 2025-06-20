import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/roadmaps_list_view/roadmaps_list_bloc_builder.dart';
import 'widgets/roadmaps_screen_top_bar.dart';


class DeveloperCoursesRoadmapsScreen extends StatelessWidget {
  const DeveloperCoursesRoadmapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 24.h, 16.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const RoadmapsScreenTopBar(),
                verticalSpace(24),
                //TODO: This design may be refactored also check the download svg
                //TODO: The navigation of the roadmap to the course should be fixed from UI It is ambiguous
                const RoadmapsListBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
