import 'dart:developer';
import 'package:baasid_app/utilities/screen_size.dart';
import 'package:baasid_app/utilities/style_config.dart';
import 'package:flutter/material.dart';

class PreLogoView extends StatelessWidget {
  const PreLogoView({super.key});

  @override
  Widget build(BuildContext context) {
    log("home");
    Widget logo() {
      double backgroundWidth = 115;
      double backgroundHeight = 128;
      double linebgkWidth = 61;
      double lineHeight = 30;
      double circleSize = 17;
      double lineSize = 10;
      Color lineColor = Colors.white;
      return Container(
        width: backgroundWidth,
        height: backgroundHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(backgroundWidth / 2),
            topRight: Radius.circular(backgroundWidth / 2),
            bottomLeft: Radius.circular(backgroundWidth / 2 + 5),
          ),
          color: normalObjColor,
        ),
        child: Center(
            child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: lineHeight - 25),
                  child: Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(circleSize / 2),
                        ),
                        color: lineColor),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: linebgkWidth,
                    height: lineHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(linebgkWidth / 2),
                      ),
                      border: Border(
                        top: BorderSide(width: lineSize, color: lineColor),
                        right: BorderSide(width: lineSize, color: lineColor),
                        left: BorderSide(width: lineSize, color: lineColor),
                      ),
                    ),
                  ),
                  Container(
                    width: linebgkWidth,
                    height: lineHeight,
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: lineSize, color: lineColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: linebgkWidth),
                    child: Container(
                      width: 20,
                      height: lineSize,
                      color: lineColor,
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      );
    }

    String title = "HotelPro";
    String version = "0.9.4";

    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 173, 173, 173),
      body: SafeArea(
        child: SizedBox(
          width: ScreenSize().width,
          height: ScreenSize().height,
          child: Stack(
            children: [
              Positioned.fill(
                top: 20,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      logo(),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      color: const Color.fromARGB(115, 177, 41, 41),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "v. $version",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
