import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/models/service.dart';
import 'package:effective_flutter_lab/constants.dart';

class SberCard extends StatelessWidget {
  final Service service;

  const SberCard({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: AppColors.blueGray,
            blurRadius: 14,
            offset: Offset(0, 8),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: AppColors.redGray,
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          // Действия, которые должны произойти при клике на виджет
        },
        child: Container(
          width: 216,
          height: 130,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    service.imagePath,
                    width: 36,
                    height: 36,
                  ),
                  const Padding(padding: EdgeInsets.only(left: 12)),
                  Text(
                    service.title,
                    style: AppFonts.bodyLarge,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 22),
              ),
              Text(
                service.description,
                style: AppFonts.titleSmall,
              ),
              Text(
                service.cost,
                style: AppFonts.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
