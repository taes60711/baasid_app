import 'package:baasid_app/utilities/screen_size.dart';
import 'package:baasid_app/utilities/style_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBarInfo {
  IconData iconData;
  String pageTilte;

  BottomBarInfo({required this.iconData, required this.pageTilte});
}

class BottomBar extends StatefulWidget {
  Function changeIndex;
  int currentIndex;
  BottomBar({super.key, required this.changeIndex, required this.currentIndex});

  @override
  State<BottomBar> createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> with TickerProviderStateMixin {
  late List<AnimationController> controller = [];

  List<BottomBarInfo> bottomBar = [
    BottomBarInfo(
        iconData: FontAwesomeIcons.circleArrowUp, pageTilte: "Explore"),
    BottomBarInfo(iconData: FontAwesomeIcons.locationDot, pageTilte: "Near Me"),
    BottomBarInfo(
        iconData: FontAwesomeIcons.bookBookmark, pageTilte: "My Post"),
    BottomBarInfo(iconData: FontAwesomeIcons.userLarge, pageTilte: "Profile"),
  ];
  @override
  void initState() {
    for (int i = 0; i < bottomBar.length; i++) {
      controller.add(AnimationController(
          duration: const Duration(milliseconds: 300), vsync: this));
      controller[i].forward();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize().height,
      width: ScreenSize().width,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: ScreenSize().width,
          height: bottomBarHeight,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: .2, style: BorderStyle.solid),
            ),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ...bottomBar.map((e) {
                  int selectedIndex = bottomBar.indexOf(e);
                  return SizedBox(
                    width: ScreenSize().width * 1 / 4 - 40 * 1 / 4,
                    height: bottomBarHeight,
                    child: widget.currentIndex == selectedIndex
                        ? ScaleTransition(
                            scale: Tween<double>(begin: 0.3, end: 1)
                                .animate(controller[selectedIndex]),
                            child: SizedBox(
                              width: 35,
                              height: 50,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Image.asset(
                                      "assets/images/bottomBarIcon.png",
                                      fit: BoxFit.cover,
                                      width: 40,
                                      height: 50,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  Center(
                                    child: Icon(
                                      e.iconData,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        : CupertinoButton(
                            onPressed: () {
                              widget.changeIndex(selectedIndex);
                              widget.currentIndex = selectedIndex;
                              controller[selectedIndex].reset();
                              controller[selectedIndex].forward();
                            },
                            child: Column(
                              children: [
                                Icon(e.iconData,
                                    color: const Color.fromARGB(
                                        255, 145, 145, 145)),
                                const SizedBox(
                                  height: 4,
                                ),
                                Expanded(
                                  child: Text(
                                    e.pageTilte,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 145, 145, 145)),
                                  ),
                                )
                              ],
                            ),
                          ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
