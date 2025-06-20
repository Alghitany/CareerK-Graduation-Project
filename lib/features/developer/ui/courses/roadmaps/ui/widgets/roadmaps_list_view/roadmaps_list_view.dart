import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../../core/routing/routes.dart';
import '../../../data/models/developer_courses_roadmaps_response_body.dart';

class RoadmapsListView extends StatelessWidget {
  final List<DeveloperCoursesRoadmapsResponseBody> roadmaps;

  const RoadmapsListView({super.key, required this.roadmaps});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: roadmaps.length,
      itemBuilder: (context, index) {
        final roadmap = roadmaps[index];
        return Padding(
          padding: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 8.h),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.developerCoursesSpecificCategoryScreen,
              );
            },
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
                  // ✅ Image or Fallback Text Box
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
                    child: (roadmap.imageUrl.isNotEmpty)
                        ? ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.r),
                        bottomLeft: Radius.circular(16.r),
                      ),
                      child: Image.network(
                        roadmap.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Center(
                            child: Text(
                              roadmap.trackTitle,
                              textAlign: TextAlign.center,
                              style:
                              AppTextStyles.font20GlaucousPoppinsSemiBold,
                            ),
                          );
                        },
                      ),
                    )
                        : Center(
                      child: Text(
                        roadmap.trackTitle,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font20GlaucousPoppinsSemiBold,
                      ),
                    ),
                  ),
            
                  horizontalSpace(9),
            
                  // ✅ Textual Content
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title + Duration + Download
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    roadmap.trackTitle,
                                    style: AppTextStyles.font20DarkGreyPoppinsSemiBold,
                                  ),
                                  Text(
                                    roadmap.totalDuration,
                                    style:
                                    AppTextStyles.font16DarkGreyPoppinsRegular,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              // IconButton(
                              //   onPressed: () {},
                              //   icon: SvgPicture.asset(
                              //     'assets/svgs/folder_download_outlined.svg',
                              //     colorFilter: const ColorFilter.mode(
                              //         ColorsManager.mirage, BlendMode.srcIn),
                              //   ),
                              // ),
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
                                  roadmap.startCourse,
                                  style: AppTextStyles.font12GranitePoppinsRegular,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(16),
                          // End Point
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
                                      ColorsManager.artyClickRed, BlendMode.srcIn),
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
                                  roadmap.endCourse,
                                  style: AppTextStyles.font12GranitePoppinsRegular,
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
          ),
        );
      },
    );
  }
}
