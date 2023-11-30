import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/constants.dart';
import 'package:effective_flutter_lab/app_strings.dart';

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
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,"))
          ],
        ),
      ),
    );
  }
}
