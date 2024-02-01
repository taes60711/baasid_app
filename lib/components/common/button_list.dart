import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonList extends StatefulWidget {
  List<String> strs;
  int seletedIndex;

  Color? bgSelectedColor;
  Color? bgNormalColor;
  Color? textSelectedColor;
  Color? textNormalColor;
  ButtonList(
      {super.key,
      required this.strs,
      required this.seletedIndex,
      this.bgSelectedColor,
      this.bgNormalColor,
      this.textSelectedColor,
      this.textNormalColor});

  @override
  State<ButtonList> createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  @override
  Widget build(BuildContext context) {
    Color selectedColor = widget.bgSelectedColor == null
        ? Colors.black
        : widget.bgSelectedColor as Color;
    Color normaldColor = widget.bgNormalColor == null
        ? const Color.fromARGB(255, 211, 211, 211)
        : widget.bgNormalColor as Color;
    Color textSelectedColor = widget.textSelectedColor == null
        ? const Color.fromARGB(255, 255, 255, 255)
        : widget.textSelectedColor as Color;
    Color textNormaldColor = widget.textNormalColor == null
        ? const Color.fromARGB(255, 0, 0, 0)
        : widget.textNormalColor as Color;

    return SizedBox(
      height: 50,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.strs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: index == 0
                ? const EdgeInsets.only(top: 10, left: 10, right: 10)
                : const EdgeInsets.only(top: 10, right: 10),
            child: GestureDetector(
              onTap: () {
                log("seletedIndex:${widget.seletedIndex}");
                setState(() {
                  widget.seletedIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: widget.seletedIndex ==
                          widget.strs.indexOf(widget.strs[index])
                      ? selectedColor
                      : normaldColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.strs[index],
                    style: TextStyle(
                      color: widget.seletedIndex ==
                              widget.strs.indexOf(widget.strs[index])
                          ? textSelectedColor
                          : textNormaldColor,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
