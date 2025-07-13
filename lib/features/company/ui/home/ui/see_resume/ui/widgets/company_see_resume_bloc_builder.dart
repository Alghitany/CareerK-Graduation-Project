import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../../../../../core/widgets/preview_cv/cv_preview_and_download.dart';
import '../../../../../../../../core/widgets/preview_cv/cv_shimmer.dart';
import '../../data/model/company_home_see_resume_response_body.dart';
import '../../logic/company_home_see_resume_cubit.dart';
import '../../logic/company_home_see_resume_state.dart';

class CompanyHomeSeeResumeBlocBuilder extends StatefulWidget {
  const CompanyHomeSeeResumeBlocBuilder({super.key});

  @override
  State<CompanyHomeSeeResumeBlocBuilder> createState() =>
      _CompanyHomeSeeResumeBlocBuilderState();
}

class _CompanyHomeSeeResumeBlocBuilderState
    extends State<CompanyHomeSeeResumeBlocBuilder> {
  bool isDownloading = false;
  double downloadProgress = 0.0;

  Future<bool> requestStoragePermission() async {
    if (Platform.isAndroid) {
      final storagePermission = await Permission.storage.request();
      if (storagePermission.isGranted) return true;

      final photos = await Permission.photos.request();
      final videos = await Permission.videos.request();
      final audio = await Permission.audio.request();

      return photos.isGranted || videos.isGranted || audio.isGranted;
    }
    return true;
  }

  Future<void> downloadCV(String cvUrl) async {
    final messenger = ScaffoldMessenger.of(context);
    final granted = await requestStoragePermission();

    if (!granted) {
      messenger.showSnackBar(
        const SnackBar(content: Text('Storage permission denied')),
      );
      return;
    }

    try {
      setState(() {
        isDownloading = true;
        downloadProgress = 0.0;
      });

      final directory = Directory('/storage/emulated/0/Download');
      final fileName = cvUrl.split('/').last; // keep original filename
      final filePath = '${directory.path}/$fileName';

      final dio = Dio();
      await dio.download(
        cvUrl,
        filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            setState(() {
              downloadProgress = received / total;
            });
          }
        },
      );

      messenger.showSnackBar(
        SnackBar(content: Text('Downloaded to ${directory.path}')),
      );
    } catch (e) {
      messenger.showSnackBar(
        SnackBar(content: Text('Download failed: $e')),
      );
    } finally {
      setState(() {
        isDownloading = false;
      });
    }
  }

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
          loading: () => const CvShimmer(),
          success: (data) => _buildSuccess(data),
          error: (error) => Center(child: Text(error)),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildSuccess(CompanyHomeSeeResumeResponseBody data) {
    final cvUrl = data.uploadedCvLink ?? '';

    return Stack(
      children: [
        CvPreviewAndDownload(cvUrl: cvUrl),
        Positioned(
          top: 8,
          left: 8,
          child: Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.download),
                onPressed: isDownloading
                    ? null
                    : () {
                        if (cvUrl.isNotEmpty) {
                          downloadCV(cvUrl);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('CV link is empty')),
                          );
                        }
                      },
              ),
              if (isDownloading)
                SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    value: downloadProgress,
                    strokeWidth: 2,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
