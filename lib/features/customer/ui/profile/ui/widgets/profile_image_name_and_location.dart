import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImageNameAndLocation extends StatelessWidget {
  final String? imageUrl;
  final String? name;

  const ProfileImageNameAndLocation({
    super.key,
    this.imageUrl,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 104.w,
            height: 104.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: (imageUrl != null)
                    ? NetworkImage(imageUrl!)
                    : AssetImage('assets/images/company_logo.png')
                        as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        verticalSpace(34),
        Text(
          name ?? "",
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        ),
      ],
    );
  }
}
