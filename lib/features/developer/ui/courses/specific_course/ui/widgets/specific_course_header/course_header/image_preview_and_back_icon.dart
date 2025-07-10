import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/widgets/course_bookmark/developer_course_bookmark_bloc_builder.dart';
import '../../../../../../../logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_cubit.dart';

class ImagePreviewAndBackIcon extends StatelessWidget {
  final String? imageUrl;
  final String? videoUrl;
  final String? courseId;

  const ImagePreviewAndBackIcon(
      {super.key, this.imageUrl, this.videoUrl, this.courseId});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Course Image
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.r),
            bottomRight: Radius.circular(16.r),
          ),
          child: AppRegex.isSvg(imageUrl!)
              ? SvgPicture.network(
            "${ApiConstants.apiBaseUrl}$imageUrl",
            height: 285.h,
            width: double.infinity,
            fit: BoxFit.cover,
            placeholderBuilder: (context) => Image.asset(
              'assets/images/html_course.png',
              height: 285.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            errorBuilder: (context, error, stackTrace) => Image.asset(
              'assets/images/html_course.png',
              height: 285.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          )
              : Image.network(
            "${ApiConstants.apiBaseUrl}$imageUrl",
            height: 285.h,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Image.asset(
              'assets/images/html_course.png',
              height: 285.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Back Button
        Positioned(
          top: 12.h,
          left: 12.w,
          child: AppBackIcon(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : ColorsManager.dune,
          ),
        ),

        // Bookmark Toggle (Controlled Externally)
        Positioned(
          top: 4.h,
          right: 12.w,
          child: Padding(
            padding: EdgeInsets.zero,
            child: BlocProvider(
              create: (_) => getIt<DeveloperSingleCourseBookmarkCubit>()
                ..bookmarkCourse(courseId!),
              child: DeveloperCourseBookmarkBlocBuilder(
                courseId: courseId ?? '',
              ),
            ),
          ),
        ),

        // Play Button
        Positioned.fill(
          child: Center(
            child: GestureDetector(
              onTap: () async {
                final messenger = ScaffoldMessenger.of(context);

                if (videoUrl != null && videoUrl!.trim().isNotEmpty) {
                  final Uri url = Uri.parse(videoUrl!);
                  try {
                    final launched = await launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    );
                    if (!launched) {
                      messenger.showSnackBar(
                        const SnackBar(content: Text('Could not launch video')),
                      );
                    }
                  } catch (e) {
                    messenger.showSnackBar(
                      const SnackBar(content: Text('Failed to launch video')),
                    );
                  }
                } else {
                  messenger.showSnackBar(
                    const SnackBar(content: Text('No preview video available')),
                  );
                }
              },
              child: SvgPicture.asset(
                "assets/svgs/play.svg",
                height: 56.h,
                width: 56.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
