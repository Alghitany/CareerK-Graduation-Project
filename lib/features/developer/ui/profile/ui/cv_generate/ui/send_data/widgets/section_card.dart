import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SectionCard extends StatelessWidget {
  final Widget content;
  final String title;
  final String? hint;
  final SvgPicture icon;
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;

  const SectionCard({
    super.key,
    required this.content,
    required this.title,
    required this.icon,
    this.hint,
    this.onAdd,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: ExpansionTile(
          backgroundColor: Colors.white,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16),
          leading: Container(
            height: 30,
            width: 30,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: ColorsManager.geyser,
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppTextStyles.font16DunePoppinsSemiBold,
                ),
              ),
              if (onRemove != null)
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.red),
                  onPressed: onRemove,
                  tooltip: 'Remove',
                ),
              if (onAdd != null)
                IconButton(
                  icon: const Icon(Icons.add, color: ColorsManager.blueBell),
                  onPressed: onAdd,
                  tooltip: 'Add',
                ),
            ],
          ),
          subtitle: hint != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    hint!,
                    style: AppTextStyles.font12DunePoppinsRegular,
                  ),
                )
              : null,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(8.w, 0.h, 8.w, 8.h),
              child: content,
            ),
          ],
        ),
      ),
    );
  }
}
