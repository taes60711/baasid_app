import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  Widget? hint;
  Widget? otherInfo;
  String imageUrl;
  double? cardWidth;
  double? cardHeight;
  String? subTitle;

  CustomCard(
      {super.key,
      required this.imageUrl,
      this.hint,
      this.otherInfo,
      this.cardHeight,
      this.cardWidth,
      this.subTitle});

  @override
  Widget build(BuildContext context) {
    double _cardWidth = cardWidth != null ? cardWidth as double : 210;
    double _cardHeight = cardHeight != null ? cardHeight as double : 130;
    double cardBorderRadius = 5;
    return Container(
      width: _cardWidth,
      height: _cardHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(cardBorderRadius),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(cardBorderRadius)),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: _cardWidth,
                  height: _cardHeight / 1.7,
                  alignment: Alignment.center,
                ),
              ),
              hint != null
                  ? Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: hint,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 8),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.locationDot,
                  size: 8,
                  color: Color.fromARGB(255, 153, 153, 153),
                ),
                Text(
                  "New York",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromARGB(255, 153, 153, 153),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "11 Dreamy Places to Stay in New York for",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
                subTitle != null
                    ? Text(
                        "$subTitle",
                        style: const TextStyle(
                          fontSize: 9,
                          color: Color.fromARGB(255, 153, 153, 153),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          otherInfo == null ? Container() : otherInfo as Widget,
        ],
      ),
    );
  }
}
