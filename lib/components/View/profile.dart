import 'dart:developer';

import 'package:baasid_app/components/common/custom_card.dart';
import 'package:baasid_app/components/common/custom_scroll_view.dart';
import 'package:baasid_app/components/common/icon_text_list.dart';
import 'package:baasid_app/utilities/screen_size.dart';
import 'package:baasid_app/utilities/style_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> strs = ["1", "2", "3", "4", "5"];
    return SafeArea(
      child: SizedBox(
        height: ScreenSize().heightWithOutSafeArea - bottomBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      log("profile");
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          width: 3,
                          color: normalObjColor,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            25,
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Icon(FontAwesomeIcons.user),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("back"),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                "123456@gmail.com",
                style: TextStyle(fontSize: 14),
              ),
              subtitle: Text(
                "good afternoon , User",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            IconTextList(
              strs: strs,
              imgWidget: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: 70,
                  height: 70,
                  color: normalObjColor,
                  child: const Center(
                    child: Icon(
                      FontAwesomeIcons.android,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Customscrollview(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Favorite Hotel"),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                  color: Color.fromARGB(96, 255, 255, 255),
                                ),
                                child: const Center(
                                  child: Icon(FontAwesomeIcons.heart),
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
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Visited Hotel"),
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
              ],
            ))
          ],
        ),
      ),
    );
  }
}
