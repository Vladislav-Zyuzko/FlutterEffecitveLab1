import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/constants.dart';

class SberTitleBlock extends StatelessWidget {
  final String title;
  final String titleDescription;

  const SberTitleBlock(
      {Key? key, required this.title, required this.titleDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppFonts.titleMedium,),
          const Padding(
            padding: EdgeInsets.only(top: 8),
          ),
          Text(titleDescription, style: AppFonts.bodySmall),
        ],
      ),
    );
  }
}
