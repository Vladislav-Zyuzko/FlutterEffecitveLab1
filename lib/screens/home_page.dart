import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/constants.dart';
import 'package:effective_flutter_lab/app_strings.dart';

import 'package:effective_flutter_lab/ui_components/SberCard.dart';
import 'package:effective_flutter_lab/ui_components/SberTitleBlock.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Map homeText = AppStrings.text;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            SliverAppBar(
              stretch: true,
              backgroundColor: AppColors.white,
              expandedHeight: 280,
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
                              const Padding(
                                padding: EdgeInsets.only(top: 36),
                              ),
                              Text(
                                homeText['username'],
                                style: textTheme.titleLarge,
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
              bottom: TabBar(
                tabs: [
                  Tab(text: homeText["profileLabel"]),
                  Tab(text: homeText["settingsLabel"]),
                ],
              ),
              centerTitle: true,
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  SberTitleBlock(
                    title: homeText["connectedFunctionsTitle"], 
                    titleDescription: homeText["connectedFunctionsDescription"]
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    height: 132,
                    child: ListView.separated(
                      clipBehavior: Clip.none,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 8);
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: servicesList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SberCard(
                          service: servicesList[index],
                        );
                      },
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 46),),
                  SberTitleBlock(
                    title: homeText["ratesAndLimitsTitle"], 
                    titleDescription: homeText["ratesAndLimitsDescription"]
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
