import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  String title;
  String subTitle;
  CustomListTitle({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subTitle,
        style:
            const TextStyle(fontSize: 12, color: Color.fromARGB(73, 0, 0, 0)),
      ),
    );
  }
}
