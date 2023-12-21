import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/constants.dart';
import 'package:effective_flutter_lab/app_strings.dart';

class SberAppBar extends StatelessWidget {
  const SberAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppColors.white,
      expandedHeight: 280,
      toolbarHeight: 70,
      forceElevated: true,
      flexibleSpace: Material(
        shadowColor: AppColors.black55,
        elevation: 10.0,
        child: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          stretchModes: const <StretchMode>[
            StretchMode.zoomBackground,
            StretchMode.blurBackground,
            StretchMode.fadeTitle,
          ],
          title: Padding(
            padding: const EdgeInsets.only(bottom: 52, right: 71),
            child: Text(
              AppStrings.username,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          centerTitle: true,
          expandedTitleScale: 1.0,
          background: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 52),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: (() {
                      //TBD
                    }),
                    icon: const Icon(
                      Icons.close_rounded,
                      size: 24,
                      color: AppColors.green,
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                      ),
                      DecoratedBox(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: AppColors.gray,
                            blurRadius: 24,
                            offset: Offset(0, 16),
                            spreadRadius: -16,
                          )
                        ]),
                        child: Image.asset(
                          "assets/images/avatar.png",
                          height: 110,
                          width: 110,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: (() {
                      //TBD
                    }),
                    icon: Image.asset(
                      'assets/images/arrow_right_square.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottom: const TabBar.secondary(
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(text: AppStrings.profileLabel),
          Tab(text: AppStrings.settingsLabel),
        ],
      ),
    );
  }
}
