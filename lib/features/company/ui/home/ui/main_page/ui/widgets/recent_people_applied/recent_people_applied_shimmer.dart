import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class RecentPeopleAppliedShimmer extends StatelessWidget {
  const RecentPeopleAppliedShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: ColorsManager.pastelGrey,
            highlightColor: ColorsManager.mercury,
            child: Container(
              width: 150.w,
              height: 16.h,
              color: Colors.white,
            ),
          ),
          verticalSpace(16),
          SizedBox(
            height: 310.h,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: ColorsManager.porcelain),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.w, 8.h, 16.w, 8.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Shimmer.fromColors(
                              baseColor: ColorsManager.pastelGrey,
                              highlightColor: ColorsManager.mercury,
                              child: Container(
                                width: 48.w,
                                height: 48.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                              ),
                            ),
                            horizontalSpace(6),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Shimmer.fromColors(
                                  baseColor: ColorsManager.pastelGrey,
                                  highlightColor: ColorsManager.mercury,
                                  child: Container(
                                    width: 100.w,
                                    height: 12.h,
                                    color: Colors.white,
                                  ),
                                ),
                                verticalSpace(4),
                                Shimmer.fromColors(
                                  baseColor: ColorsManager.pastelGrey,
                                  highlightColor: ColorsManager.mercury,
                                  child: Container(
                                    width: 80.w,
                                    height: 10.h,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 16.r,
                              backgroundColor: ColorsManager.porcelain,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40.w, 8.h, 0.w, 0.h),
                          child: Row(
                            children: [
                              Shimmer.fromColors(
                                baseColor: ColorsManager.pastelGrey,
                                highlightColor: ColorsManager.mercury,
                                child: Container(
                                  width: 100.w,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                ),
                              ),
                              horizontalSpace(38),
                              Shimmer.fromColors(
                                baseColor: ColorsManager.pastelGrey,
                                highlightColor: ColorsManager.mercury,
                                child: Container(
                                  width: 100.w,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
