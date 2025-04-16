import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatefulWidget {
  final String imagePath;
  final String categoryName;
  final String coursesCount;
  final String rating;
  final bool isFavourite;

  const CategoryCard({
    super.key,
    required this.imagePath,
    required this.categoryName,
    required this.coursesCount,
    required this.rating,
    required this.isFavourite,
  });

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  late bool _isFavourite;

  @override
  void initState() {
    super.initState();
    _isFavourite = widget.isFavourite;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.developerCoursesSpecificCategoryScreen);
      },
      child: Container(
        width: 172.w,
        height: 185.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    widget.imagePath,
                    width: double.infinity.w,
                    height: 133.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isFavourite = !_isFavourite;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: SvgPicture.asset(
                        _isFavourite
                            ? 'assets/svgs/heart.svg'
                            : 'assets/svgs/empty_heart.svg',
                        // Ensure you have a heart icon in assets
                        height: 18.h,
                        width: 21.w,
                        colorFilter: const ColorFilter.mode(
                          ColorsManager.duskyBlue,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(2),
            Padding(
              padding: EdgeInsets.only(left: 7.w),
              child: Text(widget.categoryName,
                  style: AppTextStyles.font12DunePoppinsRegular),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.w),
              child: Row(
                children: [
                  Text("(${widget.coursesCount} Courses)  ",
                      style: AppTextStyles.font10SilverChalicePoppinsMedium),
                  Text(widget.rating,
                      style: AppTextStyles.font10IronSideGreyPoppinsRegular),
                  horizontalSpace(4),
                  const Icon(
                    Icons.star,
                    color: ColorsManager.schoolBusYellow,
                    size: 14,
                  ),
                ],
              ),
            ),
            verticalSpace(8.5),
          ],
        ),
      ),
    );
  }
}
