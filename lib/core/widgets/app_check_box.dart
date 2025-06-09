import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppCheckBox extends StatefulWidget {
  final bool isChecked;
  final void Function(bool?)? onChanged;
  final double? width;
  final double? height;
  final double? scale;
  final double? borderRadius;
  final Color? borderColor;
  final Color? activeColor;
  final Color? checkColor;
  final MaterialTapTargetSize? materialTapTargetSize;
  final VisualDensity? visualDensity;

  const AppCheckBox({
    super.key,
    required this.isChecked,
    this.width,
    this.height,
    this.scale,
    this.borderRadius,
    this.borderColor,
    this.activeColor,
    this.checkColor,
    this.materialTapTargetSize,
    this.visualDensity,
    this.onChanged,
  });

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked; // Initialize local state
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width?.w ?? 24.0.w,
      height: widget.height?.h ?? 24.0.h,
      child: Transform.scale(
        scale: widget.scale ?? 1.2,
        child: Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value!;
            });
            widget.onChanged!(value ?? false);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 6.0),
          ),
          side: BorderSide(
            color: widget.borderColor ?? ColorsManager.liver,
          ),
          activeColor: widget.activeColor ?? ColorsManager.blueBell,
          checkColor: widget.checkColor ?? Colors.white,
          materialTapTargetSize:
              widget.materialTapTargetSize ?? MaterialTapTargetSize.shrinkWrap,
          visualDensity: widget.visualDensity ?? VisualDensity.compact,
        ),
      ),
    );
  }
}
