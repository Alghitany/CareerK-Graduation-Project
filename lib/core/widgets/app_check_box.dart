import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppCheckBox extends StatefulWidget {
  final bool isChecked;
  const AppCheckBox({
    super.key,
    required this.isChecked,
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
      width: 24.0.w,
      height: 24.0.h,
      child: Transform.scale(
        scale: 1.2,
        child: Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value!;
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          side: const BorderSide(
            color: ColorsManager.liver,
            width: 1,
          ),
          activeColor: ColorsManager.blueBell,
          checkColor: Colors.white,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
      ),
    );
  }
}
