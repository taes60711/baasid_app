import 'dart:developer';

import 'package:baasid_app/components/common/button_list.dart';
import 'package:baasid_app/components/common/custom_card.dart';
import 'package:baasid_app/components/common/custom_listtitle.dart';
import 'package:baasid_app/components/common/custom_scroll_view.dart';
import 'package:baasid_app/utilities/screen_size.dart';
import 'package:baasid_app/utilities/style_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Mypost extends StatelessWidget {
  const Mypost({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> strs = ["Lifestyle", "Music", "Art", "Books", "Sport"];
    int seletedIndex = 0;
    return SafeArea(
      child: SizedBox(
        height: ScreenSize().heightWithOutSafeArea - bottomBarHeight,
        child: Column(
          children: [
            const Text(
              "Bali",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Customscrollview(
              scrollDirection: Axis.horizontal,
              child: ButtonList(
                strs: strs,
                seletedIndex: seletedIndex,
                bgSelectedColor: const Color.fromARGB(255, 139, 184, 243),
              ),
            ),
            CustomListTitle(
              title: 'Best Boutique Hotels in AirBnB',
              subTitle:
                  'one of a kind places to stay, now bookable directiy on HotelPro',
            ),
            Expanded(
                child: Customscrollview(
              child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: strs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomCard(
                        imageUrl: 'assets/images/product.jpg',
                        cardWidth: ScreenSize().width,
                        cardHeight: 250,
                        subTitle:
                            'one of a kind places to stay, now bookable directiy on HotelPro',
                        hint: Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Container(
                            width: 33,
                            height: 17,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(3),
                              ),
                              color: Color.fromARGB(195, 99, 135, 253),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.star,
                                  size: 10,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: Text(
                                    "4.8",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        otherInfo: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: ScreenSize().width,
                                height: 1,
                                color: const Color.fromARGB(255, 233, 233, 233),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                log("Post your story");
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: normalObjColor,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  child: Text(
                                    "Post your story",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
