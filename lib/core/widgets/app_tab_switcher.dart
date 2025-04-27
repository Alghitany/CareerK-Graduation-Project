import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTabSwitcher extends StatefulWidget {
  final List tabs;
  final Widget option0;
  final Widget option1;

  const AppTabSwitcher(
      {super.key,
      required this.tabs,
      required this.option0,
      required this.option1});

  @override
  State<AppTabSwitcher> createState() => _AppTabSwitcherState();
}

class _AppTabSwitcherState extends State<AppTabSwitcher> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(widget.tabs.length, (index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.tabs[index],
                  style: isSelected
                      ? AppTextStyles.font16BlueBellPoppinsMedium
                      : AppTextStyles.font16IronSideGreyPoppinsMedium,
                ),
                verticalSpace(4),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 4.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? ColorsManager.blueBell
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
      const Divider(
        height: 1,
        thickness: 1,
        color: ColorsManager.mercury,
      ),
      verticalSpace(4),
      selectedIndex == 0 ? widget.option0 : widget.option1
    ]);
  }
}
