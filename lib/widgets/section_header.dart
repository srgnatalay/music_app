import 'package:flutter/material.dart';
import 'package:music_app/utils/config.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String action;
  const SectionHeader({
    super.key,
    required this.title,
    this.action = "Daha Fazla Göster",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Config.sectionHeaderTitle(context),
        ),
        Text(
          action,
          style: Config.sectionHeaderAction(context),
        ),
      ],
    );
  }
}
