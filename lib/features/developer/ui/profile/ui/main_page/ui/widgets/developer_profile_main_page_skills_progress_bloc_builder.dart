import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/profile_skills_models/developer_profile_main_page_skills_response_body.dart';
import '../../logic/profile_skills_logic/developer_profile_main_page_skills_cubit.dart';
import '../../logic/profile_skills_logic/developer_profile_main_page_skills_state.dart';
import 'skills/skills_progress.dart';
import 'skills/skills_progress_shimmer.dart';

class DeveloperProfileMainPageSkillsProgressBlocBuilder
    extends StatelessWidget {
  const DeveloperProfileMainPageSkillsProgressBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperProfileMainPageSkillsCubit,
        DeveloperProfileMainPageSkillsState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data),
          error: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const SkillsProgressShimmer();
  }

  Widget setupSuccess(DeveloperProfileMainPageSkillsResponseBody data) {
    return SkillsProgress(skills: data.skills);
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
