import 'dart:developer';

import 'package:baasid_app/components/common/button_list.dart';
import 'package:baasid_app/components/common/custom_listtitle.dart';
import 'package:baasid_app/components/common/custom_card.dart';
import 'package:baasid_app/components/common/custom_scroll_view.dart';
import 'package:baasid_app/utilities/screen_size.dart';
import 'package:baasid_app/utilities/style_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Nearme extends StatefulWidget {
  const Nearme({super.key});

  @override
  State<Nearme> createState() => _NearmeState();
}

class _NearmeState extends State<Nearme> {
  int seletedIndex = 0;
  List<String> strs = ["Lifestyle", "Music", "Art", "Books", "Sport"];
  @override
  Widget build(BuildContext context) {
    double titlebgHeight = 300;
    return SizedBox(
      width: ScreenSize().width,
      height: ScreenSize().height - bottomBarHeight,
      child: Stack(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/product.jpg',
                fit: BoxFit.cover,
                width: ScreenSize().width,
                height: titlebgHeight,
                alignment: Alignment.center,
              ),
              Positioned.fill(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        log("search");
                      },
                      child: Container(
                        width: ScreenSize().width,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(133, 58, 58, 58),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(
                                FontAwesomeIcons.searchengin,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "London, England",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: ScreenSize().width,
                height: ScreenSize().height - bottomBarHeight - titlebgHeight,
                child: Customscrollview(
                    child: Column(
                  children: [
                    Customscrollview(
                      scrollDirection: Axis.horizontal,
                      child: ButtonList(
                        strs: strs,
                        seletedIndex: seletedIndex,
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
                                              color: Colors.white,
                                              fontSize: 12),
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
                  ],
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
