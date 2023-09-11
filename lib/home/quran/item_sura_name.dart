import 'package:flutter/material.dart';

class ItemSuraName extends StatelessWidget {
  String name;

  ItemSuraName({required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
    );
  }
}
