import 'dart:developer';
import 'package:baasid_app/utilities/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginInfo {
  IconData iconData;
  Color bgColor;
  String loginTitle;

  LoginInfo(
      {required this.iconData,
      required this.bgColor,
      required this.loginTitle});
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    List<LoginInfo> iconList = [
      LoginInfo(
        iconData: FontAwesomeIcons.apple,
        loginTitle: "Apple",
        bgColor: Colors.black,
      ),
      LoginInfo(
        iconData: FontAwesomeIcons.google,
        loginTitle: "google",
        bgColor: Colors.red,
      ),
      LoginInfo(
        iconData: FontAwesomeIcons.facebook,
        loginTitle: "facebook",
        bgColor: const Color.fromARGB(255, 64, 138, 235),
      )
    ];

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/loginbg.png",
            fit: BoxFit.cover,
            width: ScreenSize().width,
            height: ScreenSize().height,
            alignment: Alignment.center,
          ),
          SizedBox(
            width: ScreenSize().width,
            height: ScreenSize().height,
            child: Column(
              children: [
                SizedBox(
                  width: ScreenSize().width,
                  height: ScreenSize().height * .85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ...iconList.map(
                        (icon) => Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              backgroundColor: icon.bgColor,
                              elevation: 0,
                            ),
                            onPressed: () {
                              log("login: ${icon.loginTitle}");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  icon.iconData,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Continue with ${icon.loginTitle}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          backgroundColor: const Color.fromARGB(171, 0, 0, 0),
                          elevation: 0,
                        ),
                        onPressed: () {
                          log("goto HomePage");
                          Navigator.of(context).pushNamed('/home');
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: ScreenSize().width,
                  height: ScreenSize().height * .15,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            color: Color.fromARGB(171, 0, 0, 0),
                          ),
                          child: const Text(
                            "By continuing you agree to our T&Cs. We use your data to offer you to personalized experiences. Find out more",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
