import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';

class ExitIcon extends StatelessWidget {
  const ExitIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBackIcon(
      alignment: Alignment.centerRight,
      iconPath: 'assets/svgs/exit.svg',
    );
  }
}
