import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/features/developer/ui/courses/specific_course/data/model/specific_course_lesson_complete_models/specific_course_lesson_complete_request_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/model/specific_course_lectures_models/specific_course_lectures_response_body.dart';
import '../../../../logic/specific_course_lesson_complete_logic/specific_course_lesson_complete_cubit.dart';
import 'enroll_button_bloc_consumer.dart';

class CourseLecturesTab extends StatefulWidget {
  final List<SpecificCourseLecturesResponseBody> lectures;
  final String courseId;

  const CourseLecturesTab(
      {super.key, required this.lectures, required this.courseId});

  @override
  State<CourseLecturesTab> createState() => _CourseLecturesTabState();
}

class _CourseLecturesTabState extends State<CourseLecturesTab> {

  @override
  Widget build(BuildContext context) {
    final videoLectures = widget.lectures
        .where((lecture) => lecture.type.toLowerCase() == 'video')
        .toList();

    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.15,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 24.w,
              right: 24.w,
              top: 16.h,
              bottom: 100.h,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: videoLectures.asMap().entries.map((entry) {
                  final index = entry.key;
                  final lecture = entry.value;

                  final isFirst = index == 0;

                  final iconAsset = isFirst
                      ? 'assets/svgs/first_play.svg'
                      : 'assets/svgs/play.svg';

                  final iconBackgroundColor =
                      isFirst ? ColorsManager.duskyBlue : Colors.white;

                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: GestureDetector(
                      onTap: () async {
                        final messenger = ScaffoldMessenger.of(context);
                        if (lecture.videoUrl != null &&
                            lecture.videoUrl!.trim().isNotEmpty) {
                          final Uri uri = Uri.parse(lecture.videoUrl!);
                          try {
                            final launched = await launchUrl(uri,
                                mode: LaunchMode.externalApplication);
                            if (!launched) {
                              messenger.showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('Could not launch the video')),
                              );
                            }
                          } catch (e) {
                            messenger.showSnackBar(
                              const SnackBar(
                                  content: Text('Failed to launch video')),
                            );
                          }
                        } else {
                          messenger.showSnackBar(
                            const SnackBar(
                                content: Text('No video URL available')),
                          );
                        }
                      },
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 55.h,
                                width: 55.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: iconBackgroundColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withAlpha((0.15 * 255).round()),
                                      blurRadius: 12,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                              ),
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
                              SizedBox(
                                width: 180.w,
                                child: Text(
                                  lecture.title,
                                  style: AppTextStyles.font16DunePoppinsMedium,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                lecture.videoTime ?? '',
                                style: AppTextStyles.font14NobelPoppinsRegular,
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                lecture.isCompleted = !lecture.isCompleted;
                              });

                              context.read<SpecificCourseLessonCompleteCubit>().completeLesson(
                                  SpecificCourseLessonCompleteRequestBody(lessonId: lecture.id));
                            },
                            child: lecture.isCompleted
                                ? Lottie.asset(
                              'assets/animations/checkmark_filled.json',
                              height: 33.h,
                              width: 33.w,
                              repeat: false,
                            )
                                : SvgPicture.asset(
                              'assets/svgs/checkmark_outlined.svg',
                              height: 30.h,
                              width: 25.w,
                              colorFilter: const ColorFilter.mode(
                                ColorsManager.duskyBlue,
                                BlendMode.srcIn,
                              ),
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
                    Colors.white.withAlpha((0.05 * 255).round()),
                    Colors.white.withAlpha((0.8 * 255).round()),
                  ],
                ),
              ),
            ),
          ),
          EnrollButtonBlocConsumer(courseId: widget.courseId),
        ],
      ),
    );
  }
}
