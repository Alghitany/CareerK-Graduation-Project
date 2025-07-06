import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/company_home_see_resume_response_body.dart';
import '../../logic/company_home_see_resume_cubit.dart';
import '../../logic/company_home_see_resume_state.dart';
import 'preview_cv/cv_preview_and_download.dart';
import 'preview_cv/cv_shimmer.dart';

class CompanyHomeSeeResumeBlocBuilder extends StatelessWidget {
  const CompanyHomeSeeResumeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyHomeSeeResumeCubit,
        CompanyHomeSeeResumeState<CompanyHomeSeeResumeResponseBody>>(
      buildWhen: (previous, current) =>
          current is Loading ||
          current is Success<CompanyHomeSeeResumeResponseBody> ||
          current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildLoading(),
          success: (data) => _buildSuccess(data),
          error: (error) => _buildError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const CvShimmer();
  }

  Widget _buildSuccess(CompanyHomeSeeResumeResponseBody data) {
    return CvPreviewAndDownload(
      cvUrl: data.uploadedCvLink ?? '',
    );
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
