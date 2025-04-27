import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DeveloperBottomNavigationBar extends StatefulWidget {
  final int? selectedIndex;

  const DeveloperBottomNavigationBar({super.key, this.selectedIndex});

  @override
  State<DeveloperBottomNavigationBar> createState() =>
      _DeveloperBottomNavigationBarState();
}

class _DeveloperBottomNavigationBarState
    extends State<DeveloperBottomNavigationBar> {
  late int _selectedIndex;

  final Color _selectedColor = ColorsManager.duskyBlue;
  final Color _unselectedColor = ColorsManager.granite;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: IconButton(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/home.svg",
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 0 ? _selectedColor : _unselectedColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.contain,
                  ),
                  Text("Home",
                      style: _selectedIndex == 0
                          ? AppTextStyles.font12DuskyBluePoppinsMedium
                          : AppTextStyles.font12GranitePoppinsMedium),
                ],
              ),
              onPressed: () {
                _onItemTapped(0);
                context.pushNamed(Routes.developerHomeMainPageScreen);
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    height: 21.h,
                    width: 21.w,
                    "assets/svgs/course.svg",
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 1 ? _selectedColor : _unselectedColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.contain,
                  ),
                  Text("Courses",
                      style: _selectedIndex == 1
                          ? AppTextStyles.font12DuskyBluePoppinsMedium
                          : AppTextStyles.font12GranitePoppinsMedium),
                ],
              ),
              onPressed: () {
                _onItemTapped(1);
                context.pushNamed(Routes.developerCoursesMainPageScreen);
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    height: 21.h,
                    width: 21.w,
                    "assets/svgs/job.svg",
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 2 ? _selectedColor : _unselectedColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.contain,
                  ),
                  Text("Jobs",
                      style: _selectedIndex == 2
                          ? AppTextStyles.font12DuskyBluePoppinsMedium
                          : AppTextStyles.font12GranitePoppinsMedium),
                ],
              ),
              onPressed: () {
                _onItemTapped(2);
                context.pushNamed(Routes.developerJobsMainPageScreen);
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/person_outlined.svg",
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 3 ? _selectedColor : _unselectedColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.contain,
                  ),
                  Text("Profile",
                      style: _selectedIndex == 3
                          ? AppTextStyles.font12DuskyBluePoppinsMedium
                          : AppTextStyles.font12GranitePoppinsMedium),
                ],
              ),
              onPressed: () {
                _onItemTapped(3);
                context.pushNamed(Routes.developerProfileMainPageScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
