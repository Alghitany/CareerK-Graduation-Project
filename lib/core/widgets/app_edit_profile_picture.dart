import 'dart:io';

import 'package:carrerk/core/helpers/app_regex.dart';
import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class AppEditProfilePicture extends StatefulWidget {
  final double? imageRadius;
  final Color? backgroundColor;
  final double? defaultContentHeight;
  final Color? defaultContentColor;
  final double? editIconBottomPosition;
  final double? editIconRightPosition;
  final double? editIconBackgroundRadius;
  final Color? editIconBackgroundColor;
  final double? editIconHeight;
  final double? editIconWidth;
  final void Function(File? imageFile)? onImageSelected;
  final String? profileImage;

  const AppEditProfilePicture({
    super.key,
    this.imageRadius,
    this.backgroundColor,
    this.defaultContentHeight,
    this.defaultContentColor,
    this.editIconBottomPosition,
    this.editIconRightPosition,
    this.editIconBackgroundRadius,
    this.editIconBackgroundColor,
    this.editIconHeight,
    this.editIconWidth,
    this.onImageSelected,
    this.profileImage,
  });

  @override
  State<AppEditProfilePicture> createState() => _AppEditProfilePictureState();
}

class _AppEditProfilePictureState extends State<AppEditProfilePicture> {
  String? _localImagePath;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Choose Image Source"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text("Camera"),
                onTap: () async {
                  Navigator.pop(context);
                  final pickedFile =
                      await _picker.pickImage(source: ImageSource.camera);
                  final file =
                      pickedFile != null ? File(pickedFile.path) : null;
                  setState(() {
                    _localImagePath = file?.path;
                  });
                  widget.onImageSelected?.call(file);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("Gallery"),
                onTap: () async {
                  Navigator.pop(context);
                  final pickedFile =
                      await _picker.pickImage(source: ImageSource.gallery);
                  final file =
                      pickedFile != null ? File(pickedFile.path) : null;
                  setState(() {
                    _localImagePath = file?.path;
                  });
                  widget.onImageSelected?.call(file);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildImage() {
    if (_localImagePath != null) {
      return _buildFileImage(File(_localImagePath!));
    } else if (widget.profileImage != null) {
      if (widget.profileImage!.startsWith('http')) {
        return _buildNetworkImage(widget.profileImage!);
      } else {
        return _buildFileImage(File(widget.profileImage!));
      }
    } else {
      return _defaultIcon();
    }
  }

  Widget _buildFileImage(File file) {
    return ClipOval(
      child: Image.file(
        file,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
        errorBuilder: (_, __, ___) => _defaultIcon(),
      ),
    );
  }

  Widget _buildNetworkImage(String url) {
    if (AppRegex.isSvg(url)) {
      return ClipOval(
        child: SvgPicture.network(
          "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(url)}",
          width: double.infinity,
          height: double.infinity,
          placeholderBuilder: (_) => _defaultIcon(),
        ),
      );
    } else {
      return ClipOval(
        child: Image.network(
          "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(url)}",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          errorBuilder: (_, __, ___) => _defaultIcon(),
        ),
      );
    }
  }


  Widget _defaultIcon() {
    return SvgPicture.asset(
      "assets/svgs/person_filled.svg",
      height: widget.defaultContentHeight ?? 105.h,
      colorFilter: ColorFilter.mode(
        widget.defaultContentColor ?? ColorsManager.ghostWhite,
        BlendMode.srcIn,
      ),
      fit: BoxFit.contain,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: widget.imageRadius?.r ?? 70.r,
          backgroundColor: widget.backgroundColor ?? ColorsManager.titanWhite,
          child: _buildImage(),
        ),
        Positioned(
          bottom: widget.editIconBottomPosition ?? 5.h,
          right: widget.editIconRightPosition ?? 5.w,
          child: InkWell(
            onTap: _pickImage,
            child: CircleAvatar(
              radius: widget.editIconBackgroundRadius ?? 17.5,
              backgroundColor:
                  widget.editIconBackgroundColor ?? ColorsManager.surfieGreen,
              child: SvgPicture.asset(
                "assets/svgs/edit.svg",
                height: widget.editIconHeight ?? 17.h,
                width: widget.editIconWidth ?? 17.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
