import 'dart:io';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
    this.editIconWidth});

  @override
  State<AppEditProfilePicture> createState() => _AppEditProfilePictureState();
}

class _AppEditProfilePictureState extends State<AppEditProfilePicture> {
  String? _imagePath;
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
                  setState(() {
                    _imagePath = pickedFile?.path;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("Gallery"),
                onTap: () async {
                  Navigator.pop(context);
                  final pickedFile =
                  await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    _imagePath = pickedFile?.path;
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: widget.imageRadius ?? 70,
          backgroundColor: widget.backgroundColor ?? ColorsManager.titanWhite,
          backgroundImage:
          _imagePath != null ? FileImage(File(_imagePath!)) : null,
          child: _imagePath == null
              ? Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  "assets/svgs/person_filled.svg",
                  height: widget.defaultContentHeight ?? 92.h,
                  colorFilter: ColorFilter.mode(
                    widget.defaultContentColor ?? ColorsManager.ghostWhite,
                    BlendMode.srcIn,
                  ),
                  fit: BoxFit.contain,
                ),
              )
              : null, // Hide default icon when image is selected
        ),
        Positioned(
          bottom: widget.editIconBottomPosition ?? 5,
          right: widget.editIconRightPosition ?? 5,
          child: InkWell(
            onTap: _pickImage,
            child: CircleAvatar(
              radius: widget.editIconBackgroundRadius ?? 17.5,
              backgroundColor: widget.editIconBackgroundColor ?? ColorsManager.surfieGreen,
              child: SvgPicture.asset(
                "assets/svgs/edit.svg",
                height: widget.editIconHeight ?? 17,
                width: widget.editIconWidth ?? 17,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
