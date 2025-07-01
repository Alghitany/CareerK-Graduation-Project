import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseLecturesTab extends StatelessWidget {
  const CourseLecturesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final lectures = [
      {
        'title': 'Introduction to React',
        'duration': '04:28 min',
        'type': 'first',
      },
      {
        'title': 'State & Props',
        'duration': '06:10 min',
        'type': 'normal',
      },
      {
        'title': 'React Hooks',
        'duration': '09:05 min',
        'type': 'normal',
      },
      {
        'title': 'Quiz 1',
        'duration': '02:00 min',
        'type': 'quiz',
      },
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height /
          2.15, // Ensure full screen height
      child: Stack(
        children: [
          // Scrollable lecture list
          Padding(
            padding: EdgeInsets.only(
              left: 24.w,
              right: 24.w,
              top: 16.h,
              bottom: 100.h, // Leave space for button
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: lectures.map((lecture) {
                  final type = lecture['type'];
                  final iconAsset = switch (type) {
                    'first' => 'assets/svgs/first_play.svg',
                    'quiz' => 'assets/svgs/quiz_play.svg',
                    _ => 'assets/svgs/play.svg',
                  };
                  final iconBackgroundColor = switch (type) {
                    'first' =>
                      ColorsManager.duskyBlue, // Blue from first_play.svg
                    'quiz' =>
                      ColorsManager.aquaHaze, // Light gray from quiz_play.svg
                    _ => Colors.white,
                  };
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: GestureDetector(
                      onTap: () {
                        // TODO: handle lecture tap
                      },
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              // Shadow circle (behind)
                              Container(
                                height: 55.h,
                                width: 55.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: iconBackgroundColor,
                                  // Optional base color
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      blurRadius: 12,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                              ),

                              // SVG icon (on top)
                              SvgPicture.asset(
                                iconAsset,
                                height: 60.h,
                                width: 60.w,
                              ),
                            ],
                          ),
                          horizontalSpace(26),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                lecture['title']!,
                                style: AppTextStyles.font16DunePoppinsMedium,
                              ),
                              Text(
                                lecture['duration']!,
                                style: AppTextStyles.font14NobelPoppinsRegular,
                              ),
                            ],
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'assets/svgs/keyboard_arrow_right.svg',
                            height: 18.h,
                            width: 8.w,
                            colorFilter: const ColorFilter.mode(
                              ColorsManager.duskyBlue,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          // Fade above the button
          Positioned(
            bottom: 75.h,
            left: 0,
            right: 0,
            child: Container(
              height: 30.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.05),
                    Colors.white.withOpacity(0.8),
                  ],
                ),
              ),
            ),
          ),

          // Sticky button
          Positioned(
            bottom: 24.h,
            left: 24.w,
            right: 24.w,
            child: AppTextButton(
              buttonText: "Enroll Now",
              textStyle: AppTextStyles.font14WhitePoppinsMedium,
              onPressed: () {
                // TODO: Enroll Now
              },
            ),
          ),
        ],
      ),
    );
  }
}
