import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTabSwitcher extends StatefulWidget {
  final List<String> tabs;
  final Widget option0;
  final Widget option1;
  final Widget? option2;
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const AppTabSwitcher({
    super.key,
    required this.tabs,
    required this.option0,
    required this.option1,
    required this.selectedIndex,
    required this.onTabChanged,
    this.option2,
  });

  @override
  State<AppTabSwitcher> createState() => _AppTabSwitcherState();
}

class _AppTabSwitcherState extends State<AppTabSwitcher>
    with TickerProviderStateMixin {
  late Widget _currentChild;
  late int _oldIndex;

  @override
  void initState() {
    super.initState();
    _currentChild = widget.option0;
    _oldIndex = widget.selectedIndex;
  }

  @override
  void didUpdateWidget(AppTabSwitcher oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_oldIndex != widget.selectedIndex) {
      setState(() {
        _currentChild = _getOptionByIndex(widget.selectedIndex);
        _oldIndex = widget.selectedIndex;
      });
    }
  }

  Widget _getOptionByIndex(int index) {
    if (index == 0) return widget.option0;
    if (index == 1) return widget.option1;
    if (index == 2 && widget.option2 != null) return widget.option2!;
    return widget.option0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Tabs
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(widget.tabs.length, (index) {
            final isSelected = widget.selectedIndex == index;
            return GestureDetector(
              onTap: () => widget.onTabChanged(index),
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

        // ✨ Smooth fade + slide transition
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeInCubic,
          transitionBuilder: (child, animation) {
            final isForward = widget.selectedIndex > _oldIndex;
            final offsetAnimation = Tween<Offset>(
              begin: Offset(isForward ? 0.1 : -0.1, 0),
              end: Offset.zero,
            ).animate(animation);

            return SlideTransition(
              position: offsetAnimation,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          child: KeyedSubtree(
            key: ValueKey(widget.selectedIndex),
            child: _currentChild,
          ),
        ),
      ],
    );
  }
}
