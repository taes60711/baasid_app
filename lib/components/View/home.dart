import 'dart:developer';

import 'package:baasid_app/components/View/explore.dart';
import 'package:baasid_app/components/View/mypost.dart';
import 'package:baasid_app/components/View/near_me.dart';
import 'package:baasid_app/components/View/profile.dart';
import 'package:baasid_app/components/common/bottom_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int currentIndex = 0;

class _HomeState extends State<Home> {
  List<String> strs = ["1", "2", "3", "4"];
  changeIndex(int selectedIndex) {
    setState(() {
      currentIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    log("Home Index: $currentIndex");

    Widget pageList(int currentIndex) {
      List<Widget> pageList = [
        const Explore(),
        const Nearme(),
        const Mypost(),
        const Profile()
      ];
      return pageList[currentIndex];
    }

    return Scaffold(
      body: Stack(
        children: [
          pageList(currentIndex),
          BottomBar(
            changeIndex: changeIndex,
            currentIndex: currentIndex,
          ),
        ],
      ),
    );
  }
}
