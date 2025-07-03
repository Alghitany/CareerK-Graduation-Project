import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagePreviewAndBackIcon extends StatefulWidget {
  final String? imageUrl;
  final bool isBookmarked;
  final VoidCallback? onPlay;

  const ImagePreviewAndBackIcon({
    super.key,
    this.imageUrl,
    required this.isBookmarked,
    this.onPlay,
  });

  @override
  State<ImagePreviewAndBackIcon> createState() =>
      _ImagePreviewAndBackIconState();
}

class _ImagePreviewAndBackIconState extends State<ImagePreviewAndBackIcon> {
  late bool isBookmarked;

  @override
  void initState() {
    super.initState();
    isBookmarked = widget.isBookmarked;
  }

  @override
  Widget build(BuildContext context) {
    final bool hasImage =
        widget.imageUrl != null && widget.imageUrl!.trim().isNotEmpty;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.r),
            bottomRight: Radius.circular(16.r),
          ),
          child: hasImage
              ? Image.network(
                  widget.imageUrl!,
                  height: 285.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      'assets/images/html_course.png',
                      height: 285.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    );
                  },
                )
              : Image.asset(
                  'assets/images/html_course.png',
                  height: 285.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
        ),

        // Back Button
        Positioned(
          top: 12.h,
          left: 12.w,
          child: const AppBackIcon(),
        ),

        // Bookmark Toggle
        Positioned(
          top: 4.h,
          right: 12.w,
          child: IconButton(
            onPressed: () {
              setState(() {
                isBookmarked = !isBookmarked;
              });
            },
            icon: SvgPicture.asset(
              isBookmarked
                  ? 'assets/svgs/bookmark_filled.svg'
                  : 'assets/svgs/bookmark_outlined.svg',
              height: 18.h,
              width: 15.w,
            ),
          ),
        ),

        // Play Button
        Positioned.fill(
          child: Center(
            child: GestureDetector(
              onTap: widget.onPlay,
              child: SvgPicture.asset(
                "assets/svgs/play.svg",
                height: 56.h,
                width: 56.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
