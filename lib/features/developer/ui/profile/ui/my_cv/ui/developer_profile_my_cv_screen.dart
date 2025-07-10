import 'dart:io';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';
import '../../../../../../../core/widgets/app_text_button.dart';
import '../logic/developer_profile_settings_get_my_cv_logic/developer_profile_sittings_get_my_cv_cubit.dart';
import '../logic/developer_profile_settings_update_uploaded_cv_logic/developer_profile_settings_update_uploaded_cv_cubit.dart';
import '../logic/developer_profile_settings_delete_cv_logic/developer_profile_settings_delete_cv_cubit.dart';
import 'widgets/developer_profile_my_cv_bloc_builder.dart';
import 'widgets/my_cv_top_bar.dart';

class DeveloperProfileMyCvScreen extends StatefulWidget {
  const DeveloperProfileMyCvScreen({super.key});

  @override
  State<DeveloperProfileMyCvScreen> createState() =>
      _DeveloperProfileMyCvScreenState();
}

class _DeveloperProfileMyCvScreenState
    extends State<DeveloperProfileMyCvScreen> {
  bool isUploadedCV = true;
  bool isDownloading = false;
  double downloadProgress = 0.0;

  Future<bool> requestStoragePermission() async {
    if (Platform.isAndroid) {
      final storagePermission = await Permission.storage.request();
      if (storagePermission.isGranted) return true;

      // Android 13+ permissions:
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
      final filePath =
          '${directory.path}/${isUploadedCV ? 'uploaded_cv.pdf' : 'generated_cv.pdf'}';

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
        SnackBar(content: Text('CV downloaded to ${directory.path}')),
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

  Future<void> pickAndUploadCV() async {
    final messenger = ScaffoldMessenger.of(context);
    final updateCubit =
        context.read<DeveloperProfileSettingsUpdateUploadedCVCubit>();
    final getMyCVCubit = context.read<DeveloperProfileSettingsGetMyCVCubit>();

    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result == null || result.files.isEmpty) {
      return;
    }

    final filePath = result.files.single.path!;

    messenger.showSnackBar(
      const SnackBar(content: Text('Uploading CV...')),
    );

    await updateCubit.updateUploadedMyCV(filePath);

    final state = updateCubit.state;
    state.maybeWhen(
      success: (_) {
        messenger.showSnackBar(
          const SnackBar(content: Text('CV uploaded successfully!')),
        );
        getMyCVCubit.getMyCV();
      },
      error: (error) {
        messenger.showSnackBar(
          SnackBar(content: Text('Upload failed: $error')),
        );
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final deleteCvCubit = context.read<DeveloperProfileSettingsDeleteCVCubit>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
          child: Column(
            children: [
              MyCVTopBar(
                onSwapPressed: () {
                  setState(() {
                    isUploadedCV = !isUploadedCV;
                  });
                },
                isUploadedCV: isUploadedCV,
                deleteCvCubit: deleteCvCubit,
              ),
              verticalSpace(56),
              DeveloperProfileMyCVBlocBuilder(isUploadedCV: isUploadedCV),
              verticalSpace(64),
              Row(
                children: [
                  if (isUploadedCV)
                    Expanded(
                      child: AppTextButton(
                        buttonText: 'Update',
                        backgroundColor: Colors.white,
                        textStyle: AppTextStyles
                            .font14PrimaryWildBlueYonderPoppinsMedium,
                        borderColor: ColorsManager.primaryWildBlueYonder,
                        onPressed: () async {
                          await pickAndUploadCV();
                        },
                      ),
                    ),
                  horizontalSpace(16),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AppTextButton(
                          backgroundColor: ColorsManager.primaryWildBlueYonder,
                          buttonText:
                              isDownloading ? 'Downloading...' : 'Download',
                          textStyle: AppTextStyles.font14WhitePoppinsSemiBold,
                          onPressed: isDownloading
                              ? () {}
                              : () {
                                  final cubit = context.read<
                                      DeveloperProfileSettingsGetMyCVCubit>();
                                  final cvUrl = isUploadedCV
                                      ? cubit.uploadedCVUrl
                                      : cubit.generatedCVUrl;

                                  if (cvUrl.isNotEmpty) {
                                    downloadCV(cvUrl);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'CV not available to download')),
                                    );
                                  }
                                },
                        ),
                        if (isDownloading)
                          SizedBox(
                            width: 24.w,
                            height: 24.w,
                            child: CircularProgressIndicator(
                              value: downloadProgress,
                              color: Colors.white,
                              strokeWidth: 3,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
