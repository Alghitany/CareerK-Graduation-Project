import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RoadmapsListView extends StatelessWidget {
  const RoadmapsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> roadmaps = [
      {
        'title': 'Front end',
        'time': 20,
        'startPoint': 'Dorem ipsum dolor sit amet',
        'endPoint': 'Dorem ipsum dolor sit amet',
      },
      {
        'title': 'Front end',
        'time': 20,
        'startPoint': 'Dorem ipsum dolor sit amet',
        'endPoint': 'Dorem ipsum dolor sit amet',
      },
      {
        'title': 'Front end',
        'time': 20,
        'startPoint': 'Dorem ipsum dolor sit amet',
        'endPoint': 'Dorem ipsum dolor sit amet',
      },
      {
        'title': 'Front end',
        'time': 20,
        'startPoint': 'Dorem ipsum dolor sit amet',
        'endPoint': 'Dorem ipsum dolor sit amet',
      },
      {
        'title': 'Front end',
        'time': 20,
        'startPoint': 'Dorem ipsum dolor sit amet',
        'endPoint': 'Dorem ipsum dolor sit amet',
      },
      {
        'title': 'Front end',
        'time': 20,
        'startPoint': 'Dorem ipsum dolor sit amet',
        'endPoint': 'Dorem ipsum dolor sit amet',
      },
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: roadmaps.length,
      itemBuilder: (context, index) {
        final roadmap = roadmaps[index];
        return Padding(
          padding: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 8.h),
          child: Container(
            height: 170.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 133.w,
                  height: 170.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      bottomLeft: Radius.circular(16.r),
                    ),
                    color: ColorsManager.aquaHaze,
                  ),
                  child: Center(
                    child: Text(
                      roadmap['title'],
                      style: AppTextStyles.font20GlaucousPoppinsSemiBold,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                horizontalSpace(9),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  roadmap['title'],
                                  style: AppTextStyles
                                      .font20DarkGreyPoppinsSemiBold,
                                ),
                                Text(
                                  "${roadmap['time']} Hours",
                                  style: AppTextStyles
                                      .font16DarkGreyPoppinsRegular,
                                ),
                              ],
                            ),
                            horizontalSpace(45),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/svgs/folder_download_outlined.svg',
                                colorFilter: const ColorFilter.mode(
                                    ColorsManager.mirage, BlendMode.srcIn),
                              ),
                            ),
                          ],
                        ),
                        verticalSpace(12),
                        // Start Point
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                              child: SvgPicture.asset(
                                'assets/svgs/start_point.svg',
                                height: 9.h,
                                width: 8.5.w,
                                colorFilter: const ColorFilter.mode(
                                    ColorsManager.cloverGreen, BlendMode.srcIn),
                              ),
                            ),
                            horizontalSpace(5),
                            Text(
                              "Start point",
                              style:
                                  AppTextStyles.font12CloverGreenPoppinsMedium,
                            ),
                            horizontalSpace(4),
                            Expanded(
                              child: Text(
                                "Dorem ipsum dolor sit amet",
                                style:
                                    AppTextStyles.font12GranitePoppinsRegular,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                              child: SvgPicture.asset(
                                'assets/svgs/end_point.svg',
                                height: 9.h,
                                width: 8.5.w,
                                colorFilter: const ColorFilter.mode(
                                    ColorsManager.artyClickRed,
                                    BlendMode.srcIn),
                              ),
                            ),
                            horizontalSpace(5),
                            Text(
                              "End point",
                              style: AppTextStyles
                                  .font12ArtyClickRedPoppinsRegular,
                            ),
                            horizontalSpace(4),
                            Expanded(
                              child: Text(
                                "Dorem ipsum dolor sit amet",
                                style:
                                    AppTextStyles.font12GranitePoppinsRegular,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
