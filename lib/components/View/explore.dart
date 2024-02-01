import 'dart:developer';

import 'package:baasid_app/components/common/custom_listtitle.dart';
import 'package:baasid_app/components/common/custom_card.dart';
import 'package:baasid_app/components/common/custom_scroll_view.dart';
import 'package:baasid_app/components/common/icon_text_list.dart';
import 'package:baasid_app/utilities/screen_size.dart';
import 'package:baasid_app/utilities/style_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

double barHeight = 45;
double barPadding = 8;

class MyCustomContainer extends Container {
  MyCustomContainer({
    super.key,
    super.child,
  }) : super(
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          color: Colors.blue,
        );
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  Widget searchBar() {
    Color barColor = const Color.fromARGB(255, 223, 223, 223);
    return GestureDetector(
      onTap: () {
        log("search");
      },
      child: SizedBox(
        width: ScreenSize().width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: ScreenSize().width - 80,
              height: barHeight,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(5),
                ),
                color: barColor,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.searchengin),
                  Text("Where are you going?")
                ],
              ),
            ),
            Container(
              width: 40,
              height: barHeight,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(5),
                ),
                color: barColor,
              ),
              child: const Icon(
                FontAwesomeIcons.microphone,
                size: 16,
                color: Color.fromARGB(255, 150, 150, 150),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> strs = ["1", "2", "3", "4", "5"];

    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(barPadding),
            child: searchBar(),
          ),
          SizedBox(
            width: ScreenSize().width,
            height: ScreenSize().heightWithOutSafeArea -
                bottomBarHeight -
                barHeight -
                barPadding * 2,
            child: Customscrollview(
              child: Column(
                children: [
                  CustomListTitle(
                    title: 'Explore Cities Differently',
                    subTitle:
                        'Travel inspired with cool tips and suprising stories.',
                  ),
                  IconTextList(
                    strs: strs,
                    imgWidget: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/local.png",
                          fit: BoxFit.cover,
                          width: 70,
                          height: 70,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                  CustomListTitle(
                    title: 'Handpicked Hotels',
                    subTitle:
                        'one of a kind places to stay, now bookable directiy on HotelPro',
                  ),
                  Customscrollview(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 140,
                      child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: strs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8.0),
                            child: CustomCard(
                              imageUrl: 'assets/images/product.jpg',
                              hint: Container(
                                width: 30,
                                height: 20,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                  ),
                                  color: Color.fromARGB(255, 255, 166, 33),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.userLarge,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2),
                                      child: Text(
                                        "4",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  CustomListTitle(
                    title: 'Best Boutique Hotels in AirBnB',
                    subTitle:
                        'one of a kind places to stay, now bookable directiy on HotelPro',
                  ),
                  Customscrollview(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 140,
                      child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: strs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8.0),
                            child: CustomCard(
                              imageUrl: 'assets/images/product.jpg',
                              hint: Padding(
                                padding: const EdgeInsets.only(right: 9),
                                child: Container(
                                  width: 30,
                                  height: 17,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(3),
                                    ),
                                    color: Color.fromARGB(195, 255, 255, 255),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "1.1km",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  CustomListTitle(
                    title: 'Most Recent Visited',
                    subTitle:
                        'one of a kind places to stay, now bookable directiy on HotelPro',
                  ),
                  Customscrollview(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 140,
                      child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: strs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8.0),
                            child: CustomCard(
                              cardWidth: 240,
                              imageUrl: 'assets/images/product.jpg',
                              hint: Padding(
                                padding: const EdgeInsets.only(right: 9),
                                child: Container(
                                  width: 30,
                                  height: 17,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(3),
                                    ),
                                    color: Color.fromARGB(195, 255, 255, 255),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "1.1km",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
