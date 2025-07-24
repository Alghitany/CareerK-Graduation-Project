import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../core/networking/api_error_model.dart';
import '../../../data/models/generate_models/developer_profile_cv_generate_generated_response.dart';
import '../../../logic/generate_logic/developer_profile_cv_generate_generated_cubit.dart';
import '../../../logic/generate_logic/developer_profile_cv_generate_generated_state.dart';
import 'cv_preview/cv_generate_shimmer.dart';
import 'cv_preview/cv_preview_And_download.dart';

class DeveloperGeneratedCVBlocBuilder extends StatelessWidget {
  const DeveloperGeneratedCVBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperProfileCVGenerateGeneratedCubit,
        DeveloperProfileCVGenerateGeneratedState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildLoading(),
          success: (data) => _buildSuccess(data),
          error: (apiErrorModel) => _buildError(apiErrorModel),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const CVGenerateShimmer();
  }

  Widget _buildSuccess(DeveloperProfileCVGenerateGeneratedResponse data) {
    return CvPreviewAndDownload(
      cvUrl: data.downloadUrl ?? '',
    );
  }

  Widget _buildError(ApiErrorModel apiErrorModel) {
    return Center(child: Text(apiErrorModel.getAllErrorMessages()));
  }
}
