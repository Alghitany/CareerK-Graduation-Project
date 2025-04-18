import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OngoingAndCompletedTabSwitcher extends StatefulWidget {
  const OngoingAndCompletedTabSwitcher({super.key});

  @override
  OngoingAndCompletedTabSwitcherState createState() =>
      OngoingAndCompletedTabSwitcherState();
}

class OngoingAndCompletedTabSwitcherState
    extends State<OngoingAndCompletedTabSwitcher> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = ['Ongoing', 'Completed'];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(tabs.length, (index) {
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
                    tabs[index],
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
        )
      ],
    );
  }
}
