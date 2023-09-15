import 'package:flutter/material.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${content}',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    );
  }
}
