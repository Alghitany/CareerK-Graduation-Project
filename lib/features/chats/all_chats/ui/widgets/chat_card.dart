import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatCard extends StatelessWidget {
  final String name;
  final String time;
  final String message;
  final String imagePath;
  final VoidCallback? onTap;

  const ChatCard({
    super.key,
    required this.name,
    required this.time,
    required this.message,
    required this.imagePath,
    this.onTap,
  });

  bool get _isNetworkImage =>
      imagePath.isNotEmpty &&
      (imagePath.startsWith('http') || imagePath.startsWith('https'));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 96.h,
        margin: EdgeInsets.only(bottom: 12.h),
        child: Card(
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: ColorsManager.pastelGrey),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Container(
                  width: 48.w,
                  height: 48.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorsManager.lemonGrass,
                      width: 1.w,
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: _buildProfileImage(),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              name,
                              style: AppTextStyles
                                  .font14RangoonGreenPoppinsSemiBold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            time,
                            style: AppTextStyles.font12LemonGrassPoppinsRegular,
                          ),
                        ],
                      ),
                      verticalSpace(8),
                      Text(
                        message,
                        style: AppTextStyles.font12LemonGrassPoppinsRegular,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    if (_isNetworkImage) {
      return Image.network(
        imagePath,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Padding(
            padding: EdgeInsets.all(12.w),
            child: SvgPicture.asset(
              "assets/svgs/person_outlined.svg",
              colorFilter: const ColorFilter.mode(
                ColorsManager.lemonGrass,
                BlendMode.srcIn,
              ),
            ),
          );
        },
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(12.w),
        child: SvgPicture.asset(
          "assets/svgs/person_outlined.svg",
          colorFilter: const ColorFilter.mode(
            ColorsManager.lemonGrass,
            BlendMode.srcIn,
          ),
        ),
      );
    }
  }
}
