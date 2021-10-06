import 'package:adidas_website/constants.dart';
import 'package:adidas_website/responsive.dart';
import 'package:adidas_website/screens/main/components/bottom_bar.dart';
import 'package:adidas_website/screens/main/components/header_description_and_background.dart';
import 'package:adidas_website/screens/main/components/left_bar.dart';
import 'package:adidas_website/screens/main/components/nav_list.dart';
import 'package:adidas_website/screens/main/components/nike_shoes.dart';
import 'package:adidas_website/screens/main/components/right_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // print(height);

    return Scaffold(
      body: SingleChildScrollView(
        child: Responsive(
          mobile: MobileScreen(),
          tablet: TabletScreen(),
          desktop: DesktopScreen(),
        ),
      ),
    );
  }
}

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 744,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    LeftBar(),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: kDefaultPadding / 2),
                            width: double.infinity,
                            height: 60,
                            // color: Colors.blue,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/icons/adidas.png",
                                    height: 40,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: NavList(),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: NikeShoes(),
                                ),
                                Expanded(
                                  child: HeaderDescriptionAndBackground(),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    RightBar(),
                  ],
                ),
              ),
              BottomBar(),
            ],
          ),
        ),
        // Container(
        //   height: 500,
        //   width: double.infinity,
        //   color: Colors.red,
        // )
      ],
    );
  }
}

class TabletScreen extends StatelessWidget {
  const TabletScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 744,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    LeftBar(),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: kDefaultPadding / 2),
                            width: double.infinity,
                            height: 60,
                            // color: Colors.blue,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/icons/adidas.png",
                                    height: 40,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: NavList(),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: NikeShoes(),
                                ),
                                Expanded(
                                  child: HeaderDescriptionAndBackground(),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BottomBar(),
            ],
          ),
        ),
      ],
    );
  }
}

class MobileScreen extends StatelessWidget {
  const MobileScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          width: double.infinity,
          height: 60,
          // color: Colors.blue,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/icons/adidas.png",
                  height: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding),
                child: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          child: NikeShoes(),
        ),
        Container(
          height: 500,
          child: HeaderDescriptionAndBackground(),
        ),
        BottomBar(),
      ],
    );
  }
}
