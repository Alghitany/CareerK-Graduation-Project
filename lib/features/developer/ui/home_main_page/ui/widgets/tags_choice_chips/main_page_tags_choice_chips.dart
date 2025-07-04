import 'package:carrerk/core/widgets/app_choice_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theming/styles.dart';
import '../../../data/models/developer_tags_home_main_page_models/developer_tags_home_main_page_response_body.dart';

class MainPageTagsChoiceChips extends StatelessWidget {
  final List<DeveloperTagsHomeMainPageResponseBody> tags;
  final ValueChanged<String> onSelected;

  const MainPageTagsChoiceChips({
    super.key,
    required this.tags,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          AppChoiceChip(
            options: tags.map((tag) => tag.trackName).toList(),
            selectedTextStyle: AppTextStyles.font14WhiteMulishBold,
            unSelectedTextStyle: AppTextStyles.font14DuneMulishBold,
            initialSelectedIndex: 0,
            onSelected: (index) {
              final selectedTrackId = tags[index].trackId;
              onSelected(selectedTrackId);
            },
          ),
        ],
      ),
    );
  }
}
