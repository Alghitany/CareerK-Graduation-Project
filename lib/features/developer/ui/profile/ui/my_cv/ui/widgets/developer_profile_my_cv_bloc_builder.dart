import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/widgets/preview_cv/cv_preview_and_download.dart';
import '../../../../../../../../core/widgets/preview_cv/cv_shimmer.dart';
import '../../data/models/developer_profile_settings_get_my_cv_models/developer_profile_settings_get_my_cv_response_body.dart';
import '../../logic/developer_profile_settings_get_my_cv_logic/developer_profile_sittings_get_my_cv_cubit.dart';
import '../../logic/developer_profile_settings_get_my_cv_logic/developer_profile_sittings_get_my_cv_state.dart';

class DeveloperProfileMyCVBlocBuilder extends StatelessWidget {
  final bool isUploadedCV;

  const DeveloperProfileMyCVBlocBuilder(
      {super.key, required this.isUploadedCV});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperProfileSettingsGetMyCVCubit,
        DeveloperProfileSettingsGetMyCVState>(
      buildWhen: (previous, current) =>
          current is DeveloperProfileSittingsMyCVLoading ||
          current is DeveloperProfileSittingsMyCVSuccess ||
          current is DeveloperProfileSittingsMyCVError,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => _buildLoading(),
          success: (data) => _buildSuccess(data),
          error: (error) => _buildError(error),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const CvShimmer();
  }

  Widget _buildSuccess(DeveloperProfileSettingsGetMyCVResponseBody data) {
    final cvUrl = isUploadedCV ? data.uploadedCV : data.generatedCV;
    return CvPreviewAndDownload(
      cvUrl: cvUrl ?? '',
    );
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
