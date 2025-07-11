import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../../core/helpers/spacing.dart';

class RelatedCoursesListShimmer extends StatelessWidget {
  const RelatedCoursesListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: 3,
        separatorBuilder: (context, index) => horizontalSpace(14),
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: ColorsManager.mercury,
            highlightColor: ColorsManager.silverChalice.withOpacity(0.3),
            child: Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SizedBox(
                width: 230.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 120.h,
                      decoration: BoxDecoration(
                        color: ColorsManager.mercury,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 140.w,
                            height: 14.h,
                            color: ColorsManager.mercury,
                          ),
                          verticalSpace(8),
                          Container(
                            width: 100.w,
                            height: 12.h,
                            color: ColorsManager.mercury,
                          ),
                          verticalSpace(8),
                          Row(
                            children: [
                              Container(
                                width: 60.w,
                                height: 16.h,
                                color: ColorsManager.mercury,
                              ),
                              horizontalSpace(32),
                              Container(
                                width: 30.w,
                                height: 16.h,
                                color: ColorsManager.mercury,
                              ),
                              horizontalSpace(8),
                              Container(
                                width: 16.w,
                                height: 16.h,
                                color: ColorsManager.mercury,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
