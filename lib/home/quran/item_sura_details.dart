import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
  String content;
  int index;

  ItemSuraDetails({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${content} (${index + 1}) ',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    );
  }
}
