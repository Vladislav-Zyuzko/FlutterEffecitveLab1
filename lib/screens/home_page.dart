import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/constants.dart';
import 'package:effective_flutter_lab/app_strings.dart';

import 'package:effective_flutter_lab/ui_components/sber_app_bar.dart';
import 'package:effective_flutter_lab/ui_components/sber_card.dart';
import 'package:effective_flutter_lab/ui_components/sber_title_block.dart';
import 'package:effective_flutter_lab/ui_components/sber_rate.dart';
import 'package:effective_flutter_lab/ui_components/sber_chip.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Map homeText = AppStrings.text;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
            return <Widget>[const SberAppBar()];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      SberTitleBlock(
                          title: homeText["connectedFunctionsTitle"],
                          titleDescription:
                              homeText["connectedFunctionsDescription"]),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      SizedBox(
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
                      const Padding(
                        padding: EdgeInsets.only(top: 46),
                      ),
                      SberTitleBlock(
                          title: homeText["ratesAndLimitsTitle"],
                          titleDescription:
                              homeText["ratesAndLimitsDescription"]),
                      const Padding(
                        padding: EdgeInsets.only(top: 12),
                      ),
                      ListView.separated(
                        padding: EdgeInsets.zero,
                        separatorBuilder: (BuildContext context, int index) {
                          return const Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Divider(),
                          );
                        },
                        shrinkWrap: true,
                        itemCount: ratesList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SberRate(rate: ratesList[index]);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 46),
                      ),
                      SberTitleBlock(
                          title: homeText["interestsTitle"],
                          titleDescription: homeText["interestsDescription"]),
                      const Padding(
                        padding: EdgeInsets.only(top: 12),
                      ),
                      Wrap(
                        spacing: 8.0,
                        children: interestsList.map((interest) {
                          return SberChip(title: interest);
                        }).toList(),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 32),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
