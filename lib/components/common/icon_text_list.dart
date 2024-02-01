import 'package:baasid_app/components/common/custom_scroll_view.dart';

import 'package:flutter/material.dart';

class IconTextList extends StatelessWidget {
  List<String> strs;
  Widget imgWidget;

  IconTextList({super.key, required this.strs, required this.imgWidget});

  @override
  Widget build(BuildContext context) {
    return Customscrollview(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 90,
        child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: strs.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: [
                  imgWidget,
                  Text(strs[index]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
