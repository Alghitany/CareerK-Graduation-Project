import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class NoChatsPlaceholder extends StatelessWidget {
  const NoChatsPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("No chats yet",
          style: AppTextStyles.font16IronSideGreyPoppinsMedium),
    );
  }
}
