import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
    return Container(
      height: 0.57.sh,
      // Half of the screen height (more responsive than fixed height)
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: ColorsManager.lemonGrass, width: 1),
      ),
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
    return Center(
      child: Icon(
        Icons.picture_as_pdf,
        color: ColorsManager.lemonGrass,
        size: 72.sp, // Scaled icon size
      ),
    );
  }
}
