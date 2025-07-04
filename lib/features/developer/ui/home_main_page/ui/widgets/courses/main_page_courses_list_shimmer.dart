import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class MainPageCoursesListShimmer extends StatelessWidget {
  const MainPageCoursesListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3, // Show 3 shimmer items
        separatorBuilder: (context, index) => horizontalSpace(8.w),
        itemBuilder: (context, index) {
          return SizedBox(
            width: 277.h,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 134.h,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 8.h, left: 16.w, right: 16.w),
                      child: Container(
                        width: 100.w,
                        height: 14.h,
                        color: Colors.white,
                      ),
                    ),
                    verticalSpace(8),
                    Padding(
                      padding: EdgeInsets.only(left: 13.w, right: 16.w),
                      child: Container(
                        width: 140.w,
                        height: 14.h,
                        color: Colors.white,
                      ),
                    ),
                    verticalSpace(8),
                    Padding(
                      padding: EdgeInsets.only(left: 34.w, right: 16.w),
                      child: Row(
                        children: [
                          Container(
                            width: 30.w,
                            height: 12.h,
                            color: Colors.white,
                          ),
                          horizontalSpace(8),
                          Container(
                            width: 10.w,
                            height: 12.h,
                            color: Colors.white,
                          ),
                          horizontalSpace(8),
                          Container(
                            width: 30.w,
                            height: 12.h,
                            color: Colors.white,
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
