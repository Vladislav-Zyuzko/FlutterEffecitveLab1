import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/constants.dart';
import 'package:effective_flutter_lab/models/rate.dart';

class SberRate extends StatelessWidget {
  final Rate rate;

  const SberRate({Key? key, required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        //TBD
      },
      title: Text(
        rate.title,
        style: AppFonts.bodyLarge,
      ),
      subtitle: rate.description != null
          ? Text(
              rate.description ?? "",
              style: AppFonts.bodySmall,
            )
          : null,
      leading: Image.asset(
        rate.imagePath,
        width: 36,
        height: 36,
      ),
      trailing: Padding(
        padding: EdgeInsets.zero,
        child: IconButton(
          onPressed: (() {
            //TBD
          }),
          icon: Icon(
            Icons.arrow_forward_ios_rounded,
            weight: 20,
            color: AppColors.black32,
            size: 14,
          ),
        ),
      ),
    );
  }
}
