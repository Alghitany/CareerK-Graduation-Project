import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../../core/widgets/app_text_button.dart';
import '../../../../data/model/specific_course_enroll_models/specific_course_enroll_request_body.dart';
import '../../../../logic/specific_course_enroll_logic/specific_course_enroll_cubit.dart';
import '../../../../logic/specific_course_enroll_logic/specific_course_enroll_state.dart';

class EnrollButtonBlocConsumer extends StatelessWidget {
  final String courseId;

  const EnrollButtonBlocConsumer({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 45.h,
      left: 24.w,
      right: 24.w,
      child: BlocConsumer<SpecificCourseEnrollCubit, SpecificCourseEnrollState>(
        listener: (context, state) {
          if (state is SpecificCourseEnrollSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.data.message)),
            );
          } else if (state is SpecificCourseEnrollError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Failed to process request")),
            );
          }
        },
        builder: (context, state) {
          String buttonText = "Enroll Now";
          Color backgroundColor = ColorsManager.primaryWildBlueYonder;
          TextStyle style = AppTextStyles.font14WhitePoppinsMedium;
          Color borderColor = ColorsManager.primaryWildBlueYonder;
          VoidCallback? onPressed;

          if (state is SpecificCourseEnrollSuccess) {
            final message = state.data.message.toLowerCase();
            if (message.contains("unenrolled")) {
              buttonText = "Enroll Now";
            } else if (message.contains("enrolled")) {
              buttonText = "Undo";
              backgroundColor = Colors.white;
              style = AppTextStyles.font14PrimaryWildBlueYonderPoppinsMedium;
              borderColor = ColorsManager.primaryWildBlueYonder;
            }
          }

          onPressed = () {
            context.read<SpecificCourseEnrollCubit>().enrollInSpecificCourse(
                  SpecificCourseEnrollRequestBody(),
                  courseId,
                );
          };

          return AppTextButton(
            buttonText: buttonText,
            textStyle: style,
            onPressed: onPressed,
            backgroundColor: backgroundColor,
            borderColor: borderColor,
          );
        },
      ),
    );
  }
}
