import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'cv_generate_shimmer.dart';

class CvPreviewAndDownload extends StatefulWidget {
  final String cvUrl;

  const CvPreviewAndDownload({super.key, required this.cvUrl});

  @override
  State<CvPreviewAndDownload> createState() => _CvPreviewAndDownloadState();
}

class _CvPreviewAndDownloadState extends State<CvPreviewAndDownload> {
  bool _isLoadFailed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 406.h,
      child: _isLoadFailed
          ? _buildShimmerPlaceholder()
          : SfPdfViewer.network(
              widget.cvUrl,
              onDocumentLoadFailed: (details) {
                setState(() {
                  _isLoadFailed = true;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: ColorsManager.rangoonGreen,
                    content: Text(
                      'Failed to load PDF: ${details.description}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
    );
  }

  Widget _buildShimmerPlaceholder() {
    return const CVGenerateShimmer();
  }
}
