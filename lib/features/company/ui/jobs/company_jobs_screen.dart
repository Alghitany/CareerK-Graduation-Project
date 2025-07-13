import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/company_bottom_navigation_bar.dart';
import '../../../../core/widgets/company_floating_action_button.dart';
import '../profile/ui/widgets/profile_all_job_posts_bloc_builder.dart';

class CompanyJobsScreen extends StatefulWidget {
  const CompanyJobsScreen({super.key});

  @override
  State<CompanyJobsScreen> createState() => _CompanyJobsScreenState();
}

class _CompanyJobsScreenState extends State<CompanyJobsScreen> {
  int selectedTabIndex = 0;

  final List<String> tabs = ['All Jobs', 'Chats'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CompanyBottomNavigationBar(selectedIndex: 2),
      floatingActionButton: const CompanyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tab Switcher and Search Icon in same row
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: List.generate(tabs.length, (index) {
                          final isSelected = index == selectedTabIndex;
                          return GestureDetector(
                            onTap: () {
                              if (index == 1) {
                                context.pushNamed(Routes.chatsAllChatsScreen);
                              } else {
                                setState(() {
                                  selectedTabIndex = index;
                                });
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.h, horizontal: 12.w),
                              margin: EdgeInsets.only(right: 8.w),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.black
                                    : Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Text(
                                tabs[index],
                                style: TextStyle(
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // TODO: Add search field or action
                      },
                      icon: SvgPicture.asset(
                        'assets/svgs/search.svg',
                        height: 22.h,
                        width: 22.w,
                        colorFilter: const ColorFilter.mode(
                          Colors.black,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ],
                ),

                verticalSpace(8),

                // Tab Content
                if (selectedTabIndex == 0) const ProfileAllJobPostsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
